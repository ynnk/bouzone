# BOU.ZONE

## Referencement

### Ajouter des meta informations dans chaque page

    block referencement

        // minimum requirement
        
        title  Hélène Bou / Quinn - Suite pour corde et 100 visages
        meta(name='description' content='Durée : 30 min. Spectacle tout public à partir de 10 ans.  Sortie prévue : mai 2016')

        //- facebook optimisations
        //- name=og:type  content=website|article
        
        meta(name='og:url' content='http://bou.zone/quinn.html')
        meta(name='og:site_name' content='bou zone')
        meta(name='og:type' content='article')
        meta(name='og:locale' content='fr_FR')
        meta(name='og:image' content='http://bou.zone/images/quinn/quinn_01.png')
        meta(name='og:description' content='Durée : 30 min. Spectacle tout public à partir de 10 ans.  Sortie prévue : mai 2016')


#### test des url a linker ds facebook

https://developers.facebook.com/tools/debug/og/object/



## Contenu

### Images
    //- tag
    img.ui[.taille][.position].image(&attributes)
    
    //- class:    
    //- taille = tiny, small, big, huge, massive, fluid  
    //- position = centered
    
    //- attributes:    
    //- src = lien relatif vers l image
    //- alt = courte description de l'image
    
    //- exemple
    img.ui.fluid.centered.image(src="/images/quinn/quinn_01.png", alt="Quinn - corde lisse. Hélène Bou résidence de travail @ le Lido - centre des arts du cirque de Toulouse  ") ")

