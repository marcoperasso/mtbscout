<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UploadFile.aspx.cs" Inherits="Routes_UploadFile" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="/css/StyleSheet.css" type="text/css" />
     <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <script type="text/javascript" src="/Script/jquery.html5uploader.min.js"></script>
    <script type="text/javascript">
        String.prototype.hashCode = function () {
            var hash = 0;
            if (this.length == 0) return hash;
            for (i = 0; i < this.length; i++) {
                var ch = this.charCodeAt(i);
                hash = ((hash << 5) - hash) + ch;
                hash = hash & hash; // Convert to 32bit integer
            }
            return hash;
        }

        function imagesUploaded() {
            if (parent && parent.imagesUploaded)
                parent.imagesUploaded();

            document.getElementById("waitImage").style.display = "none";
        }
        function onFileSelected(input) {

            if (input.value.length > 0) {
                document.getElementById("waitImage").style.display = "block";
                document.forms[0].submit();

            }
        }
        function autoResize() {
            var newheight;
            var newwidth;
            newheight = document.body.scrollHeight;
            newwidth = document.body.scrollWidth;

            height = (newheight) + "px";
            width = (newwidth) + "px";
        }
        function onFileStart(evt, file) {
           //$("#progressContainer").append($("<div id='" + file.name.hashCode() + "'>" + file.name + "</div>"));
            document.getElementById("waitImage").style.display = "block";
           
        }
        function onFileProgress(evt, file) {
        }
        function onFileLoaded(evt, file) {
            //$("#" + +file.name.hashCode()).remove();
             
        }
        $(function () {
            $("#dropbox, #multiple").html5Uploader({
                name: "foo",
                postUrl: "/Routes/UploadFile.aspx" + location.search,
                onSuccess: imagesUploaded,
                onServerProgress: onFileProgress,
                onServerLoadStart: onFileStart,
                onServerLoad: onFileLoaded
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div id="waitImage" style="position: absolute; width: 100%; height: 100%; z-index: 10;
        left: 0px; top: 0px; background-image: url('../Images/wait.gif'); background-position: center;
        background-repeat: no-repeat; background-color: White; display: none;" title="Caricamento immagini in corso, attentere prego...">
    </div>
    <p style="text-align: justify;">
        Premi il pulsante sotto per aggiungere un'immagine
    </p>
    <table border="0" width="100%">
        <tr>
            <td>
                <asp:FileUpload ID="file_upload" runat="server" name="file_upload" type="file" accept="image/jpg"
                    onchange="onFileSelected(this);" />
            </td>
            <td>
                <div id="dropbox" style="padding: 30px; border: 1px dashed; text-align: center">
                    Trascina qui uno o più file di immagine (estensione .jpg)
                </div>
            </td>
        </tr>
        <tr>
            <td id="progressContainer" colspan="2">
            </td>
        </tr>
    </table>
    <input id="multiple" type="file" multiple accept="image/jpg" style="display: none" />
    </form>
</body>
</html>
