document.addEventListener('DOMContentLoaded', function(){
  if ( document.querySelector('#report-image')){
    const ImageList = document.querySelector('#image-list');

    const createImageHTML = (blob) => {
       // 画像を表示するためのdiv要素を生成
      const imageElement = document.createElement('div');

      // 表示する画像を生成
      const blobImage = document.createElement('img');
      blobImage.setAttribute('src', blob);

      // 生成したHTMLの要素をブラウザに表示
      imageElement.appendChild(blobImage);
      ImageList.appendChild(imageElement);
    };

    document.querySelector('#report-image').addEventListener('change', function(e){
      // 画像が表示されている場合のみ、すでに存在している画像を削除
      const imageContent = document.querySelector('img');
      if (imageContent){
        imageContent.remove();
      }

      const file = e.target.files[0];
      const blob = window.URL.createObjectURL(file);

      createImageHTML(blob);
    });
  }
});