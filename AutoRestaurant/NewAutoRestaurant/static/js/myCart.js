window.onload = function (){
            var aLi = document.getElementsByTagName("li");
            var oDiv = document.getElementById("div1");
            var oInput = document.getElementById("input1");

            for(var i=0;i<aLi.length;i++){

                aLi[i].ondragstart = function (ev){
                    var ev = ev||window.event;
                    var aP = this.getElementsByTagName("p");

                    ev.dataTransfer.setData("title",aP[0].innerHTML);
                    ev.dataTransfer.setData("money",aP[1].innerHTML);

                }
                oDiv.ondragover = function(ev){
                    var ev = ev||window.event;
                    ev.preventDefault();

                }

            }


            oDiv.ondrop = function (ev){
                var ev = ev||window.event;
                ev.preventDefault();
                var sTitle = ev.dataTransfer.getData("title");
                var sMoney = ev.dataTransfer.getData("money");  

                    var cP = document.createElement("p");
                    this.appendChild(cP);
                    var span1 = document.createElement("span");
                    span1.className = "box1";
                    span1.innerHTML = "1";
                    cP.appendChild(span1);
                    var span2 = document.createElement("span");
                    span2.className = "box2";
                    span2.innerHTML = sTitle;
                    cP.appendChild(span2);
                    var span3 = document.createElement("span");
                    span3.className = "box3";
                    span3.innerHTML = sMoney;
                    cP.appendChild(span3);
                    json[sTitle]=1;
            }
        }
    </script>