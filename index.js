var app = new Vue({ 
    el: '#app',
    data: {
        message: 'Hello Vue!'
    }
})

var app2 = new Vue({
    el: '#app-2',
    data: {
        message: 'Fecha: ' +  new Date().toLocaleDateString()
    }
})

var app3 = new Vue({
    el: '#app-3',
    data: {
        seen: true
    }
})