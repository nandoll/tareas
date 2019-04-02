class ProductoController < ApplicationController
  def index
    @objProductos = Producto.all
  end

  # Acciones para la acción nuevo
  def nuevo
    @objProducto = Producto.new
  end
  def crear
    @objProducto = Producto.new(params[:producto].permit(:categoria, :nombre, :precio, :precio_venta))
    @objProducto.save
    redirect_to root_path 
  end
  def editar
    @objProducto = Producto.find(params[:id])
  end
  def actualizar
    @objProducto = Producto.find(params[:id])
    @objProducto.update(params[:producto].permit(:categoria, :nombre, :precio, :precio_venta))
    redirect_to root_path 
  end 
  def eliminar
    @objProducto = Producto.find(params[:id])
    @objProducto.destroy
    redirect_to root_path 
  end
end
