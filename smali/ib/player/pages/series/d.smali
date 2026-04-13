.class public final synthetic Lib/player/pages/series/d;
.super Ljava/lang/Object;

# interfaces
.implements Lib/player/base/helper/x;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Lib/player/pages/series/h;


# direct methods
.method public synthetic constructor <init>(Lib/player/pages/series/h;I)V
    .locals 0

    iput p2, p0, Lib/player/pages/series/d;->b:I

    iput-object p1, p0, Lib/player/pages/series/d;->q:Lib/player/pages/series/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 6

    iget v0, p0, Lib/player/pages/series/d;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lib/player/pages/series/d;->q:Lib/player/pages/series/h;

    iget-object v1, v0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lib/player/base/helper/w;->x0(Landroid/content/Context;)Lib/player/base/helper/w;

    move-result-object v0

    invoke-virtual {v0}, Lib/player/base/helper/w;->j()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v0}, Lib/player/base/helper/w;->s0(Ljava/util/ArrayList;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lib/player/pages/series/d;->q:Lib/player/pages/series/h;

    iget-object v1, v0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lib/player/base/helper/w;->x0(Landroid/content/Context;)Lib/player/base/helper/w;

    move-result-object v0

    invoke-virtual {v0}, Lib/player/base/helper/w;->j()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v0}, Lib/player/base/helper/w;->s0(Ljava/util/ArrayList;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lib/player/pages/series/d;->q:Lib/player/pages/series/h;

    iget-object v1, v0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lib/player/base/helper/w;->x0(Landroid/content/Context;)Lib/player/base/helper/w;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v0, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v0, Lio/realm/y;

    const-class v3, Lib/player/models/SeriesModel;

    invoke-virtual {v0, v3}, Lio/realm/y;->G(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    const-string v3, "is_recent"

    invoke-virtual {v0, v3}, Lio/realm/RealmQuery;->d(Ljava/lang/String;)V

    invoke-virtual {v0}, Lio/realm/RealmQuery;->f()Lio/realm/T;

    move-result-object v0

    new-instance v3, Lio/realm/r;

    invoke-direct {v3, v0}, Lio/realm/r;-><init>(Lio/realm/T;)V

    :goto_0
    invoke-virtual {v3}, Lio/realm/internal/s;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v3}, Lio/realm/internal/s;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lib/player/models/SeriesModel;

    new-instance v4, Lib/player/models/ResumeSeriesModel;

    invoke-direct {v4}, Lib/player/models/ResumeSeriesModel;-><init>()V

    invoke-virtual {v0}, Lib/player/models/SeriesModel;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lib/player/models/ResumeSeriesModel;->setName(Ljava/lang/String;)V

    invoke-virtual {v0}, Lib/player/models/SeriesModel;->getSeason_pos()I

    move-result v5

    invoke-virtual {v4, v5}, Lib/player/models/ResumeSeriesModel;->setSeason_pos(I)V

    invoke-virtual {v0}, Lib/player/models/SeriesModel;->getEpisode_pos()I

    move-result v0

    invoke-virtual {v4, v0}, Lib/player/models/ResumeSeriesModel;->setEpisode_pos(I)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v2}, Lib/player/base/helper/w;->p0(Ljava/util/ArrayList;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
