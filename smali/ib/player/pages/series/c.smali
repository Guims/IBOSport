.class public final synthetic Lib/player/pages/series/c;
.super Ljava/lang/Object;

# interfaces
.implements Ld5/q;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Lib/player/pages/series/h;


# direct methods
.method public synthetic constructor <init>(Lib/player/pages/series/h;I)V
    .locals 0

    iput p2, p0, Lib/player/pages/series/c;->b:I

    iput-object p1, p0, Lib/player/pages/series/c;->q:Lib/player/pages/series/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lib/player/pages/series/c;->b:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lib/player/models/EpisodeModel;

    check-cast p2, Ljava/lang/Integer;

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    iget-object v0, p0, Lib/player/pages/series/c;->q:Lib/player/pages/series/h;

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p2, p1}, Lib/player/pages/series/h;->W(ILib/player/models/EpisodeModel;)V

    goto :goto_0

    :cond_0
    iget-object p1, v0, Lib/player/pages/series/h;->s0:Lib/player/base/o;

    const/4 p3, 0x0

    check-cast p1, Lib/player/pages/MainActivity;

    iput-boolean p3, p1, Lib/player/pages/MainActivity;->y0:Z

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Lib/player/pages/series/h;->n0:I

    :goto_0
    const/4 p1, 0x0

    return-object p1

    :pswitch_0
    check-cast p1, Lib/player/models/Season;

    check-cast p2, Ljava/lang/Integer;

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    iget-object v0, p0, Lib/player/pages/series/c;->q:Lib/player/pages/series/h;

    if-eqz p3, :cond_2

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lib/player/models/Season;->getEpisodeModels()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lib/player/models/EpisodeModel;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lib/player/pages/series/h;->r0:Lib/player/models/SeriesModel;

    invoke-virtual {v4}, Lib/player/models/SeriesModel;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lib/player/models/Season;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lib/player/models/EpisodeModel;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lib/player/pages/series/h;->U(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v1, v0, Lib/player/pages/series/h;->p0:Ls4/j;

    invoke-virtual {p1}, Lib/player/models/Season;->getEpisodeModels()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lib/player/models/Season;->getName()Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput-object v2, v1, Ls4/j;->e:Ljava/util/List;

    iput v3, v1, Ls4/j;->g:I

    iput-object p3, v1, Ls4/j;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lv1/y;->d()V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lib/player/pages/series/h;->X(Lib/player/models/Season;I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Lib/player/pages/series/h;->o0:I

    iget-object p1, v0, Lib/player/pages/series/h;->s0:Lib/player/base/o;

    const/4 p2, 0x0

    check-cast p1, Lib/player/pages/MainActivity;

    iput-boolean p2, p1, Lib/player/pages/MainActivity;->y0:Z

    :goto_2
    const/4 p1, 0x0

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
