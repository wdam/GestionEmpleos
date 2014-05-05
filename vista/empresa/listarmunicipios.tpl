<?php if (count($municipios)> 0) { ?>   
    <div class="col-xs-12 col-sm-6 col-md-6 ">
        <select name="cboCiudad" required class="form-control" id="cboCiudad" tabindex="7" title="Ciudad O Municipio">
            <option>Seleccione Ciudad</option>
            <?php foreach ($municipios as $munic) { ?>
            <option value="<?php echo $munic->getIdMuni(); ?>"><?php echo $munic->getMunic(); ?></option>
            <?php } ?>
        </select>
    </div>

<?php }  ?>  

