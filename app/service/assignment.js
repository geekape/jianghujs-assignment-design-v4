'use strict';
const Service = require('egg').Service;
const { BizError, errorInfoEnum } = require("../constant/error");
const { tableEnum } = require("../constant/constant");
const validateUtil = require("egg-jianghu/app/common/validateUtil");
const idGenerateUtil = require("egg-jianghu/app/common/idGenerateUtil");
// ========================================常用 require end=============================================
const actionDataScheme = Object.freeze({
  selectArticleAssignmentList: {
    type: "object",
    additionalProperties: true,
    required: [],
    properties: {
      articleId: { anyOf: [{ type: "string" }, { type: "number" }] },
    },
  },
});

class AssignmentService extends Service {

  async selectArticleAssignmentList() {
    const { actionData } = this.ctx.request.body.appData;
    const { jianghuKnex } = this.app;
    const { userInfo } = this.ctx;
    const { userId } = userInfo;

    validateUtil.validate(actionDataScheme.selectArticleAssignmentList, actionData);
    const { articleId } = actionData;
    const article = await jianghuKnex(tableEnum.article).where({ id: articleId })
      .select("articleAssignmentListWithAnswer")
      .select("articleAssignmentList")
      .first();
    if (!article) {
      throw new BizError(errorInfoEnum.article_not_found)
    }
    let articleAssignmentList = [];
    let articleAssignmentListAnswer = [];
    try {
      articleAssignmentList = JSON.parse(article.articleAssignmentList || '[]');
      articleAssignmentListAnswer = JSON.parse(article.articleAssignmentListWithAnswer || '[]');
    } catch (error) {
      this.app.logger.error('[assignment.js]', 'JSON.parse error', error)
    }

    const userAssignmentList = await jianghuKnex(tableEnum.assignment).where({ articleId, userId }).select();
    const userAssignmentMap = Object.fromEntries(
      userAssignmentList.map(obj => [obj.assignmentVersion, obj])
    );

    for (const item of articleAssignmentList) {
      const userAssignment = userAssignmentMap[item.version];
      if (userAssignment) {
        item.formItemList = JSON.parse(userAssignment.assignmentFormItemList);
        item.id = userAssignment.id;
        console.log(articleAssignmentListAnswer)
        for (const it of item.formItemList) {
          const cache = articleAssignmentListAnswer[0].formItemList.find(e => e.id === it.id);

          it.check = {
            grade: it.hasOwnProperty('check') ? it.check.grade : '',
            remark: it.hasOwnProperty('check') ? it.check.remark : '',
            answer: this.getAnswerData(cache.component.title, cache.answerData),
            isRight: this.checkAnswer(it.component.title, it.answerData, cache.answerData)
          }

        }
      }

    }
    return { rows: articleAssignmentList };
  }

  async selectAssignmentListInfo() {
    const { actionData } = this.ctx.request.body.appData;
    const { jianghuKnex } = this.app;
    const { userInfo } = this.ctx;
    const { userId } = userInfo;
    validateUtil.validate(actionDataScheme.selectArticleAssignmentList, actionData);
    const { articleId } = actionData;
    const article = await jianghuKnex(tableEnum.article).where({ id: articleId }).select("assignmentName").select("articleAssignmentListWithAnswer").first();
    if (!article) {
      throw new BizError(errorInfoEnum.article_not_found)
    }

    let articleAssignmentList = [];
    try {
      articleAssignmentList = JSON.parse(article.articleAssignmentListWithAnswer || '[]');
    } catch (error) {
      this.app.logger.error('[assignment.js]', 'JSON.parse error', error)
    }
    const userAssignmentList = await jianghuKnex(tableEnum.assignment).where({ articleId }).select();
    const answerTable = await this.getFormItemTable(articleAssignmentList);
    for (const item of userAssignmentList) {
      const fromItemList = JSON.parse(item.assignmentFormItemList);
      item.answerTable = []
      for (const it of fromItemList) {
        item.answerTable.push({
          type: it.component.title,
          title: it.component.outline,
          answerData: this.getAnswerData(it.component.title, it.answerData),
        })
      }
      console.log(item.answerTable)
    }
    return { rows: userAssignmentList, answerTable };
  }
  async getFormItemTable(data) {
    const res = {}
    for (const item of data) {
      res[item.version] = res[item.version] || [];
      for (const it of item.formItemList) {
        res[item.version].push({
          type: it.component.title,
          title: it.component.outline,
          list: it.component.property.selectOptionList || '',
          answerData: await this.getAnswerData(it.component.title, it.answerData),
        })
      }
    }
    return res;
  }
  getAnswerData(type, data) {
    console.log('type', type)
    console.log('data', data)
    switch (type.replace(' ', '')) {
      case "单选":
        return data.selected;
      case "多选":
        return Object.keys(data).join(',');
      case "问答":
        return data.answer;
      default :
        return 'default';
    }
  }
  checkAnswer(type, old, now) {
    switch (type) {
      case "单选":
        return old.selected === now.selected;
      case "多选":
        return Object.keys(old).join(',') === Object.keys(now).join(',');
      case "问答":
        return old.answer === now.answer;
      default :
        return false;
    }
  }

}


module.exports = AssignmentService;
