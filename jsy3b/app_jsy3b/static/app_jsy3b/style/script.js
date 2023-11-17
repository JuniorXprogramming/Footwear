document.addEventListener("DOMContentLoaded", function() {
  let url = document.getElementsByClassName('small-preview')
  let zoomedImage = document.querySelector('#zoomed-img')
  console.log(url.length)
  console.log(zoomedImage)
  let firstSmallImage = document.querySelector('.small-preview')
  if (!firstSmallImage){
    return console.log("Please Add Image")
  }else{
    zoomedImage.style.backgroundImage = `url(${firstSmallImage.src})`
  }
  for (let i = 0; i < url.length; i++){
    url[i].addEventListener("click", function(e) {
      let elem = e.target;
      if (elem.classList.contains("small-preview")){
        let imageSrc = elem.src
        zoomedImage.style.backgroundImage = `url(${imageSrc})`
      }
    })
  }

  zoomedImage.addEventListener("mouseenter", function() {
    this.style.backgroundSize = "250%";
  }, false)

  zoomedImage.addEventListener("mouseleave", function() {
    this.style.backgroundSize = "cover"
  })

  zoomedImage.addEventListener("mousemove", function(e){
    let dimenstions = this.getBoundingClientRect();
    let x = e.clientX - dimenstions.left;
    let y = e.clientY - dimenstions.top;
    console.log(x, y)
    let xpercent = Math.round(100 / (dimenstions.width / x));
    let ypercent = Math.round(100 / (dimenstions.height / y))

    this.style.backgroundPosition = xpercent+'% ' + ypercent+'%'
  })
});
