const base = {
    get() {
        return {
            url : "http://localhost:8080/ssm6lf25/",
            name: "ssm6lf25",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/ssm6lf25/front/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "停车场微信小程序"
        } 
    }
}
export default base
