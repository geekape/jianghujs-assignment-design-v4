'use strict';

const { middleware, middlewareMatch } = require('@jianghujs/jianghu/config/middlewareConfig');
const path = require('path');
const assert = require('assert');
const jianghujsPathTemp = require.resolve('@jianghujs/jianghu');
const jianghujsPath = path.join(jianghujsPathTemp, '../');

module.exports = appInfo => {
  assert(appInfo);

  const appId = 'demo_assignment';
  const uploadDir = path.join(appInfo.baseDir, 'upload');
  const downloadBasePath = `/${appId}/upload`;

  return {
    appId,
    debug: false,
    appTitle: '江湖演示-作业设计',
    appLogo: `${appId}/public/img/logo.png`,
    appType: 'single', // single: 单应用; multiApp: 多应用
    appDirectoryLink: '/',
    indexPage: `/${appId}/page/assignmentManagement`,
    loginPage: `/${appId}/page/login`,
    helpPage: `/${appId}/page/help`,
    uploadDir,
    primaryColor: "#4caf50",
    primaryColorA80: "#EEF7EE",
    downloadBasePath,
    static: {
      maxAge: 0,
      buffer: false,
      preload: false,
      maxFiles: 0,
      dir: [
        { prefix: `/${appId}/public/`, dir: path.join(appInfo.baseDir, 'app/public') },
        { prefix: `/${appId}/public/`, dir: path.join(jianghujsPath, 'app/public') },
        { prefix: `/${appId}/upload/`, dir: uploadDir },
      ],
    },
    view: {
      defaultViewEngine: 'nunjucks',
      mapping: { '.html': 'nunjucks' },
      root: [
        path.join(appInfo.baseDir, 'app/view'),
        path.join(jianghujsPath, 'app/view'),
      ].join(','),
    },
    middleware,
    ...middlewareMatch,
  };

};
