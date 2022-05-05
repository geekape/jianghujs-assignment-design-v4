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
    const article = await jianghuKnex(tableEnum.article).where({ id: articleId }).select("articleAssignmentList").first();
    if (!article) {
      throw new BizError(errorInfoEnum.article_not_found)
    }
    let articleAssignmentList = [];
    try {
      articleAssignmentList = JSON.parse(article.articleAssignmentList || '[]');
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
      }

    }
    return { rows: articleAssignmentList };
  }

}


module.exports = AssignmentService;
