<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PreventivoAuto.aspx.cs" Inherits="WebFormApp1.PreventivoAuto" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Preventivo Auto</title>
    <link rel="stylesheet" type="text/css" href="styles.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Preventivo Auto</h2>
            
            <label for="ddlAuto">Seleziona il modello dell'auto:</label>
            <asp:DropDownList ID="ddlAuto" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlAuto_SelectedIndexChanged">
                <asp:ListItem Text="-- Seleziona un modello --" Value="" />
                <asp:ListItem Text="Fiat Punto" Value="https://upload.wikimedia.org/wikipedia/commons/6/60/Fiat_Punto_II_front_20100509.jpg" />
                <asp:ListItem Text="Lancia Delta" Value="https://upload.wikimedia.org/wikipedia/commons/f/f1/Lancia_delta_34_front_grigia_dx.jpg" />
                
            </asp:DropDownList>
            
            <asp:Image ID="imgAuto" runat="server" Visible="false" />
            
            <h3>Optional:</h3>
            <asp:CheckBox ID="cbVerniceMetallizzata" runat="server" Text="Vernice metallizzata (€330,00)" />
            <asp:CheckBox ID="cbFariXeno" runat="server" Text="Fari Xeno (€180,00)" />
            <asp:CheckBox ID="cbNavigazioneSatellitare" runat="server" Text="Sistema navigazione satellitare (€1.800,00)" />
            <asp:CheckBox ID="cbLineAssistant" runat="server" Text="Line Assistant (€2.000,00)" />
            <asp:CheckBox ID="cbRuotaDiScorta" runat="server" Text="Ruota di scorta (€155,00)" />
            <asp:CheckBox ID="cbPelle" runat="server" Text="Sedili/volante in pelle (€700,00)" />
            
            <label for="ddlGaranzia">Seleziona il numero di anni di garanzia:</label>
            <asp:DropDownList ID="ddlGaranzia" runat="server">
                <asp:ListItem Text="1 anno" Value="1" />
                <asp:ListItem Text="2 anni" Value="2" />
                <asp:ListItem Text="3 anni" Value="3" />
                <asp:ListItem Text="4 anni" Value="4" />
            </asp:DropDownList>
            
            <asp:Button ID="btnCalcola" runat="server" Text="Calcola Preventivo" OnClick="btnCalcola_Click" />
            
            <h3>Risultati:</h3>
            <p>Prezzo di partenza dell'auto: <asp:Label ID="lblPrezzoAuto" runat="server" /></p>
            <p>Totale optionals: <asp:Label ID="lblTotaleOptionals" runat="server" /></p>
            <p>Costo della garanzia: <asp:Label ID="lblCostoGaranzia" runat="server" /></p>
            <p>Totale complessivo: <asp:Label ID="lblTotaleComplessivo" runat="server" /></p>
        </div>
    </form>
</body>
</html>
