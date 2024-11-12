function verif1()
{
    
    nom=document.getElementById('n').value;
    gen=document.getElementById('g').value;
    vil=document.getElementById('v').value;
    fe=document.getElementById('fe').value;
    ma=document.getElementById('ma').value;
    if((nom.length<3)||(nom.length>20)||(alpha(nom)==false))
    {alert('nom invalide');
    return false;
    }
    np=document.getElementById('pp').value;
    c=np.indexOf("/")
    ch1=np.substring(0,c)
    ch2=np.substring(c+1,np.length)
    if ( np.length!=8 || c!=2 || isNaN(ch1) || isNaN(ch2) )
    {
        alert('numero de permis est invalide');
        return false;
    }
    pre=document.getElementById('p').value;
    if((pre.length<3)||(pre.length>20)||(alpha(pre)==false))
    {alert('prenom invalide');
    return false;
    }
    if((fe.checked==false)&&(ma.checked==false))
    {alert('il faut cocher un genre');
    return false;
    }
    if((vil.option.selectedIndex==-1))
    {alert('il faut choisir une ville');
    return false;
    }
}

function alpha(ch)
{
    v=true
    for(i=0 ; i<ch.length ; i++)
    if(ch.charAt(i).toUpperCase()<'A' || ch.charAt(i).toUpperCase()>'z')
     v=false
     return v
}
