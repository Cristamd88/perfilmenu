<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html >
    <c:choose>
        <c:when test="${user==null}">
            <%
                response.sendRedirect(request.getContextPath().concat("/sesionRequerida.html"));
            %>
        </c:when>
    </c:choose>
    <c:if test="${rolUsuario!=null}">
         <c:if test='${rolUsuario!= "Beneficiarios CyC"}'>
             <%
                 response.sendRedirect(request.getContextPath().concat("/logout.html"));
             %>
         </c:if>
     </c:if>
   
    
    

    <head>

        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta charset="UTF-8">

        <title>Beneficiarios CyC</title>

        <link rel="stylesheet" href="resources/css/kendo.default-main.min_1.css"/>
        <script src="resources/js/jquery.min.js"></script>
        <link rel="stylesheet" href="https://kendo.cdn.telerik.com/2021.3.914/styles/kendo.default-main.min.css" />
        <!--<script src="https://kendo.cdn.telerik.com/2022.1.301/js/messages/kendo.messages.es-ES.min.js"></script>-->
        <script src="resources/js/kendo.all.min.js"></script>
        <script src="resources/js/selectors.js"></script>
        <link rel="stylesheet" type="text/css" href="resources/css/disenomenu.css" />
        <link rel="stylesheet" type="text/css" href="resources/css/disenogeneral.css"/>    

        <script src="https://kendo.cdn.telerik.com/2021.3.914/js/kendo.all.min.js"></script>
        <script src="resources/js/disenogeneral.js"></script>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@100&display=swap" rel="stylesheet">
        <script src="resources/js/BeneficiarioCyC/BcycPrincipal.js"></script>
        <script>datosUsuario(${user});</script>

    </head>
 <body>

        <header>
            <img src="resources/img/Yolia.png" class="imgheader" width="120">
            <h1>Beneficiario CyC</h1>
        </header>
     


        <div >
            <ul id="menu">
                <li id="liinicio" class="menuoff" onclick="seleccionmenu(this)"> 
                    <img src="resources/img/saludFisica/inicio.png" width="20px">
                    Inicio

                </li>

                <li id="licalif" class="menuoff" onclick="seleccionmenu(this)"> 
                    <img src="resources/img/boletay.png" width="20">
                    Calificaciones 
                </li>


                <li class="menuoff"> 
                    <img src="resources/img/Horario.png" width="20">
                    Horario CyC
                </li>


                <li>
                    <img src="resources/img/cues.png" width="20">
                    Encuestas
                    <ul>
                        <li id="licuestionarios" class="menuoff" onclick="seleccionmenu(this)">
                            Mis emociones
                            <!-- <ul>
                                <li id="liEAIS" class="menuoff" onclick="seleccionmenu(this)">Escala ansiedad infantil spence</li>
                                <li id="liER"  class="menuoff" onclick="seleccionmenu(this)">Escala rosenberg</li>
                                <li id="liHA" class="menuoff" onclick="seleccionmenu(this)">Hamilton ansiedad</li>
                                <li id="liIE"  class="menuoff" onclick="seleccionmenu(this)">Inventario de Eyber</li>
                                <li id="liIB" class="menuoff" onclick="seleccionmenu(this)">Inventario beck</li>
                                <li id="liTDIE" class="menuoff" onclick="seleccionmenu(this)">Test de inteligencia emocional</li>
                                 
                            </ul>  -->
                        </li>

                        <li id="lilabo" class="menuoff" onclick="seleccionmenu(this)">

                            Resultado de Formato Laboral 
                        </li>

                        <li id="liEDSDLT" class="menuoff" onclick="seleccionmenu(this)">
                            Encuesta de Satisfacción de los Talleres 
                        </li>

                        <li id="liESCYC" class="menuoff" onclick="seleccionmenu(this)">
                            Espacio Seguro CyC
                        </li>

                        <li id="liERC"  class="menuoff" onclick="seleccionmenu(this)">
                            Mis eventos
                            <ul>
                                <li id="liEDC" class="menuoff" onclick="seleccionmenu(this)">Encuesta al derecho a la cultura</li>
                                <li id="liEDELV" class="menuoff" onclick="seleccionmenu(this)">Encuesta de Derecho a espacios libre de Violencia</li>
                            </ul>
                        </li>
                        
                    
                  </ul>
              </li>
                <li>
                    <img src="resources/img/academica.png" width="20">
                    Acadèmica (Cuardenillo)

                </li>

                <li>
                    <img src="resources/img/cyc/reco.png" width="20">
                    Sistema de Insignias

                </li>

                <li>
                    <img src="resources/img/saludFisica/bitacora.png" width="20">
                    Registro de prèstamos de ludoteca
                </li>



                <li>
                    <img src="resources/img/salir.png" width="20">
                    <a href="login.html">Cerrar Sesión</a>
                </li>

            </ul>
        </div>
        <div id="inicio" class="noVisible">
            <h1 style="margin-bottom: 0;">BIENVENIDO</h1>
            <img src="resources/img/Yul.png" width="150px">
           
            <p id="userMostrarJSP"></p>
            <p id="edadbene" class="noVisible" ></p>
            
        </div>

        <div id="calif" class="noVisible">
            <iframe id="frameHiCl" src=""></iframe>
        </div>

        <div id="ESCYC" class="noVisible">
            <iframe id="frameHiCl" src="EncuestaSES.html"></iframe>
        </div>

        <div id="EDSDLT" class="noVisible">
            <iframe id="frameHiCl" src="EncuestaSatisfaccionTalleres.html"></iframe>
        </div>
     <div id="cuestionarios" class="noVisible  " >
          <iframe id="frameHiCl2"  ></iframe>
     </div>
     
     <!--<div id="cuestionarios2" class="noVisible cuestionario1" >
          <iframe id="frameHiCl" class="cuestionario1" src="CuestionariosPequeñas.html"></iframe>
     </div>-->
     
     <script>
          var dataUserJSP = ${user}; document.getElementById('userMostrarJSP').textContent =dataUserJSP.nombre+" "+dataUserJSP.apellidoP+" "+dataUserJSP.apellidoM;
          var edadbene = ${user}; document.getElementById('edadbene').textContent = edadbene.edad;
          var text = document.getElementById("edadbene").textContent;
          console.log(text);
          var ed=parseInt(text);
          console.log(ed);
          
          
               if (ed <= 9) {
               document.getElementById("frameHiCl2").setAttribute("src", "CuestionariosPequeñas.html");
               }else if (ed >= 10) {
               document.getElementById("frameHiCl2").setAttribute("src", "Cuestionarios.html");
               }
          
        
         
     </script> 



        <footer>
            <p class="txtfooter">Yolia niñas de la calle A.C. Copyright ©2021 </p>
        </footer>
     

</body>
</html>
