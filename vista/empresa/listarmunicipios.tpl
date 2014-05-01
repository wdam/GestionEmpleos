<?php if (count($municipios)> 0) { ?>   
    <div class="col-xs-12 col-sm-6 col-md-6 hidden-xs">
        <select name="cboCiudad" required class="form-control" id="cboCiudad" tabindex="7" title="Ciudad O Municipio">
            <option>Seleccione Ciudad</option>
            <?php foreach ($municipios as $munic) { ?>
            <option value="<?php echo $munic->getIdMuni(); ?>"><?php echo $munic->getMunic(); ?></option>
            <?php } ?>
        </select>
    </div>
    
    <div class="col-xs-12 col-sm-6 col-md-6 visible-xs" style="margin-top: 15px" >
    	<select name="cboCiudad" required class="form-control" id="cboCiudad" tabindex="7" title="Ciudad O Municipio">
            <option>Seleccione Ciudad</option>
            <?php foreach ($municipios as $munic) { ?>
            <option value="<?php echo $munic->getIdMuni(); ?>"><?php echo $munic->getMunic(); ?></option>
            <?php } ?>
	</select>
    </div>

<?php }  ?>  

