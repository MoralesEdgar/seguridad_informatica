/**
 * Created by Edgar Morales on 12/10/2017.
 */
$(document).ready(function(){
    $("textarea").addClass("materialize-textarea")
    $("input[type='submit']").addClass("btn waves-effect waves-light")

    $('select').material_select();

    /*   OCULTANDO ELEMENTOS DEL DOM   */

    $( "#inicio" ).click(function() {
        $('#form_mafin').addClass("hidden");
        $('#form_mvigenere').addClass("hidden");
        $('#form_mtransposicion').addClass("hidden");
        $('#mtd_afin_archivo').addClass("hidden");
        $('#mtd_vige_archivo').addClass("hidden");
        $('#mtd_trans_archivo').addClass("hidden");
        $('#resultados').addClass("hidden");


    });

    $('#menu_afin').click(function () {
        $('#form_mafin').removeClass("hidden");
        $('#form_mvigenere').addClass("hidden");
        $('#form_mtransposicion').addClass("hidden");
        $('#mtd_afin_archivo').addClass("hidden");
        $('#mtd_vige_archivo').addClass("hidden");
        $('#mtd_trans_archivo').addClass("hidden");
        $('#resultados').addClass("hidden");


    });

    $('#menu_vige').click(function () {
        $('#form_mafin').addClass("hidden");
        $('#form_mvigenere').removeClass("hidden");
        $('#form_mtransposicion').addClass("hidden");
        $('#mtd_afin_archivo').addClass("hidden");
        $('#mtd_vige_archivo').addClass("hidden");
        $('#mtd_trans_archivo').addClass("hidden");

    });

    $('#menu_trans').click(function () {
        $('#form_mafin').addClass("hidden");
        $('#form_mvigenere').addClass("hidden");
        $('#form_mtransposicion').removeClass("hidden");
        $('#mtd_afin_archivo').addClass("hidden");
        $('#mtd_vige_archivo').addClass("hidden");
        $('#mtd_trans_archivo').addClass("hidden");
        $('#resultados').addClass("hidden");


    });

    $('#menu_arch_afin').click(function () {
        $('#form_mafin').addClass("hidden");
        $('#form_mvigenere').addClass("hidden");
        $('#form_mtransposicion').addClass("hidden");
        $('#mtd_afin_archivo').removeClass("hidden");
        $('#mtd_vige_archivo').addClass("hidden");
        $('#mtd_trans_archivo').addClass("hidden");
        $('#resultados').addClass("hidden");


    });

    $('#menu_arch_vigenere').click(function () {
        $('#form_mafin').addClass("hidden");
        $('#form_mvigenere').addClass("hidden");
        $('#form_mtransposicion').addClass("hidden");
        $('#mtd_afin_archivo').addClass("hidden");
        $('#mtd_vige_archivo').removeClass("hidden");
        $('#mtd_trans_archivo').addClass("hidden");
        $('#resultados').addClass("hidden");


    });

    $('#menu_arch_trasposicion').click(function () {
        $('#form_mafin').addClass("hidden");
        $('#form_mvigenere').addClass("hidden");
        $('#form_mtransposicion').addClass("hidden");
        $('#mtd_afin_archivo').addClass("hidden");
        $('#mtd_vige_archivo').addClass("hidden");
        $('#mtd_trans_archivo').removeClass("hidden");
        $('#resultados').addClass("hidden");


    });

    $('#menu_result').click(function () {
        $('#form_mafin').addClass("hidden");
        $('#form_mvigenere').addClass("hidden");
        $('#form_mtransposicion').addClass("hidden");
        $('#mtd_afin_archivo').addClass("hidden");
        $('#mtd_vige_archivo').addClass("hidden");
        $('#mtd_trans_archivo').addClass("hidden");
        $('#resultados').removeClass("hidden");

    });




});