<template>
    <div>
       <div class="liker">
	        <canvas class="hearts-canvas"></canvas>
	        <button class="btn">
	        	<svg width="24" height="24" viewBox="0 0 24 24">
	        		<path d="M12,21.35L10.55,20.03C5.4,15.36 2,12.27 2,8.5C2,5.41 4.42,3 7.5,3C9.24,3 10.91,3.81 12,5.08C13.09,3.81 14.76,3 16.5,3C19.58,3 22,5.41 22,8.5C22,12.27 18.6,15.36 13.45,20.03L12,21.35Z"></path>
	        	</svg>
	        </button>   
        </div>
    </div>
</template>
<style scoped>
body {
  background-color: rgba(255, 137, 164, 0.2);
  background-size: cover;
  background-repeat: no-repeat;
}

.liker {
  position: absolute;
}

.btn {
  width: 24px;
  display: flex;
  justify-content: center;
  align-items: center;
  height: 24px;
  border-radius: 50%;
  border: none;
  position: absolute;
  cursor: pointer;
  left: 50%;
  transform: translate(-50%, -10%);
  background-color: #FF4D80;
  color: #fff;
  outline: none;
  transition: 0.3s ease;
  box-shadow: 0 3px 10px #F92A82;
}
.btn svg {
  fill: #fff;
}
.btn:hover {
  background-color: #F92A82;
}
canvas{
  max-width: 500px;
}
</style>
<script>
export default {
    data(){
        return{
            d:'M12,21.35L10.55,20.03C5.4,15.36 2,12.27 2,8.5C2,5.41 4.42,3 7.5,3C9.24,3 10.91,3.81 12,5.08C13.09,3.81 14.76,3 16.5,3C19.58,3 22,5.41 22,8.5C22,12.27 18.6,15.36 13.45,20.03L12,21.35Z'
        }
    },
    mounted(){
        class HeartsFlow {
    constructor(data) {
    this.el = document.querySelector(data.canvasEl);
    this.w = 200;
    this.h = 400;
    this.ctx = this.el.getContext('2d');
    this.colors = [
    '255, 137, 164', //'#FF89A4',
    '239, 121, 138', //'#EF798A',
    '255, 77, 128', //'#FF4D80',
    '249, 42, 130' //'#F92A82'
    ];
    this.heartsAmount = data.amount;
    this.heartsList = [];
    this.isAnimate = false;
    this.raf = null;
    this.animate = this.animate.bind(this);
    this.paintHeart = this.paintHeart.bind(this);
    this.stopAnimation = this.stopAnimation.bind(this);
    this.init();
  }
  getRandomColor() {
    return this.colors[Math.floor(Math.random() * this.colors.length)];
  }
  getRandom(min, max) {
    return Math.floor(Math.random() * (max - min) + min);
  }
  setHeartsList() {
    let arr = [];
    for (let i = 0; i < this.heartsAmount; i++) {
      let currentSize = this.getRandom(10, 15);
      let dt = {
        x: this.w / 2,
        y: this.h,
        bx: this.w / 2,
        by: this.h,
        pos: this.h,
        _osp: this.getRandom(200, 400) / 100,
        osp: this.getRandom(11, 12) / 10,
        vsp: this.getRandom(currentSize, currentSize + i * 2) / 1000,
        size: currentSize,
        color: this.getRandomColor(),
        alfa: 1 };

      arr.push(dt);
    }
    this.heartsList = [...this.heartsList, ...arr];
  }
  getCoordinates({ x, y, size, color, bx, by, _osp, osp, vsp, pos, alfa }) {
    return {
      xst: x,
      yst: y + size / 2,
      x0: x - size / 1.4,
      y0: y + size / 4,
      x1: x - size / 1.3,
      y1: y - size / 1.3,
      _x0: x + size / 1.4,
      _y0: y + size / 4,
      _x1: x + size / 1.3,
      _y1: y - size / 1.3,
      xfn: x,
      yfn: y - size / 3,
      bx: bx,
      by: by,
      _osp: _osp,
      osp: osp,
      vsp: vsp,
      pos: pos,
      alfa: alfa,
      size: size,
      color: color };

  }
  paintHeart({ xst, yst, x0, y0, _x0, _y0, x1, y1, _x1, _y1, xfn, yfn, color, alfa }) {
    this.ctx.globalCompositeOperation = "lighter";
    this.ctx.beginPath();
    this.ctx.moveTo(xst, yst);
    this.ctx.bezierCurveTo(x0, y0, x1, y1, xfn, yfn);
    this.ctx.moveTo(xst, yst);
    this.ctx.bezierCurveTo(_x0, _y0, _x1, _y1, xfn, yfn);
    this.ctx.fillStyle = `rgba(${color}, ${alfa})`;
    this.ctx.strokeStyle = `rgba(${color}, ${alfa})`;
    this.ctx.fill();
    this.ctx.stroke();
    this.ctx.closePath();
  }
  mutateData() {
    this.heartsList = this.heartsList.map(item => {
      let pos = item.pos - 0.05;
      let x = item.x + Math.sin(pos * item._osp) * ((pos - item.by) / item.osp);
      let y = pos + (pos - item.by) / item.vsp * 1.6;
      let alfa = this.normalize0between1(0, this.h, y).toFixed(1);
      return {
        ...item, x: x, y: y, pos: pos, alfa: alfa };

    });
    this.heartsList = this.heartsList.filter(item => item.y > 0);
  }
  normalize0between1(min, max, value) {
    return (value - min) / (max - min);
  }
  setCanvas() {
    this.el.width = this.w;
    this.el.height = this.h;
  }
  startAnimation() {
    if (!this.isAnimate) {
      this.isAnimate = true;
      console.log('start animation');
      this.setHeartsList();
      this.animate();
    } else {
      this.setHeartsList();
    }
  }
  stopAnimation() {
    this.isAnimate = false;
    console.log('stop animation');
    cancelAnimationFrame(this.raf);
  }
  animate() {

    this.ctx.clearRect(0, 0, this.w, this.h);

    if (this.isAnimate) {
      for (let i = 0, len = this.heartsList.length; i < len; i++) {
        let hrt = this.getCoordinates(this.heartsList[i]);
        this.paintHeart(hrt);
      }
      this.mutateData();
    }

    this.raf = requestAnimationFrame(this.animate);

    if (this.heartsList.length === 0 && this.isAnimate) {
      this.stopAnimation();
    }
  }
  init() {
    this.setCanvas();
    this.setHeartsList();
    this.animate();
  }}


let ht = new HeartsFlow({
  canvasEl: '.hearts-canvas',
  amount: 20 });


let btn = document.querySelector('.btn');

btn.addEventListener('click', function () {
  ht.startAnimation();
});
    }
}
</script>