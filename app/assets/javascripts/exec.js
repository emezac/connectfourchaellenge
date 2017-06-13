

    function changeImage(a,b,c) {
        document.getElementById(c).src=a;
        document.getElementById(c).class=b;
        convertImgsIntoArray(c);
    }

    function convertImgsIntoArray(img){
                  var tblData="";
                  var tblArr=new Array();
                  tblLength = document.getElementsByClassName("imageboxempty").length;
                  //for(i=0;i<tblLength;i++){
                        //tblData="";
                        //for(j=0;j<document.getElementById(img).length;j++){
                             tblData+=document.getElementById(img).getAttribute("id");
                             //tblData+=document.getElementById(img).value+",";
                        //}
                        //tblData=tblData.substring(0,tblData.length-1)
                        //tblArr[i]=tblData.split(",");
                  //}
                  return tblData;
                  //alert(tblData);
    }

 
