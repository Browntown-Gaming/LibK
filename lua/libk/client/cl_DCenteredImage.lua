local PANEL = {}

function PANEL:Init( )
	self.container = vgui.Create( "DPanel", self )
	self.container:Dock( FILL )
	function self.container:Paint( w, h )
	end
	
	self.image = vgui.Create( "DImage", self.container )
end

function PANEL:SetImage( name )
	self.image:SetMaterial( Material( name, "noclamp smooth" ) ) 
end

function PANEL:PerformLayout( )
	local mulW = self.container:GetWide( ) / self.image.ActualWidth
	local mulH = self.container:GetTall( ) / self.image.ActualHeight

	local min = math.min( mulW, mulH )
	if min < 1 then
		self.image:SetSize( self.image.ActualWidth * min, self.image.ActualHeight * min )
		self.image:Center( )
	end
end

function PANEL:Paint( w, h )
end

vgui.Register( "DCenteredImage", PANEL, "DPanel" )