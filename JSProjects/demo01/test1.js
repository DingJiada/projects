// document.write("aaaaa");

//不借助临时变量、交换值 使用 + - 运算 a = a + (b - a) 等同于 a = b
var a = 2,b = 4;

console.log('a:'+ a,'b:'+ b);

function swap(a,b){ //先计算2个数的差 一个数加上这个差，另一个数减去这个差
	b = b - a;		// 2 = 2 - 4 = -2		// 4 = 4 - 2 = 2
	a = a + b;		// 4 = 4 + -2 = 2		// 2 = 2 + 2 = 4
	b = a - b;		// 2 = 2 - -2 = 4		// 2 = 4 - 2 = 2
	return [a,b];
}
var ab = swap(a,b);
a = ab[0];
b = ab[1];

console.log('a:'+ a,'b:'+ b);

{
	var x = 2; //var 没有块作用域 外面也可以访问
}

{
	let z = 20; //let 修饰一个块作用域变量
}

var m = 4;

console.log(m ** 3); //幂运算 4 x 4 x 4

console.log(x);//2

//module.exports = swap;