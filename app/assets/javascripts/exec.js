

    function changeImage(a,b,c,column) {
        //var n = b.search("img");
        //var id = document.getElementById(c).id;
        //val myclass= document.getElementById(c).class;
        var cell = c.substr(3,5)-column;
        //alert(" b:"+b+" cell:"+cell);
        if ( b ===  cell) {
          document.getElementById(myimg).src="/assets/letter-x.jpg";
        }
        else {
          document.getElementById(c).src=a;
          document.getElementById(c).class="imagebox";
          document.getElementById(c).id="changed";          
          convertImgsIntoArray(c,column);
        }
    }



    function convertImgsIntoArray(img,column){
                  var tblData="";
                  var tblArr=new Array();
                  
                  //tblLength = document.getElementsByClassName("imageboxempty").length;
                  //for(i=0;i<tblLength;i++){
                        //tblData="";
                        //img = "img"+i;
                        //alert(img);
                        //for(j=0;j<document.getElementById(img).length;j++){
                             //tblData+=document.getElementById(img).getAttribute("id");
                             //tblData+=document.getElementById(img).value+",";
                        //}
                        //tblData=tblData.substring(0,tblData.length-1)
                        //tblArr[i]=tblData.split(",");
                  //}
                  //return tblData;
                  //alert(cell);
    }
