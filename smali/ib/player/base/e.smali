.class public final synthetic Lib/player/base/e;
.super Ljava/lang/Object;

# interfaces
.implements Lio/realm/x;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Lib/player/models/ResumeSeriesModel;


# direct methods
.method public synthetic constructor <init>(Lib/player/models/ResumeSeriesModel;I)V
    .locals 0

    iput p2, p0, Lib/player/base/e;->b:I

    iput-object p1, p0, Lib/player/base/e;->q:Lib/player/models/ResumeSeriesModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final j(Lio/realm/y;)V
    .locals 3

    iget v0, p0, Lib/player/base/e;->b:I

    packed-switch v0, :pswitch_data_0

    const-class v0, Lib/player/models/SeriesModel;

    invoke-virtual {p1, v0}, Lio/realm/y;->G(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p1

    const-string v0, "name"

    iget-object v1, p0, Lib/player/base/e;->q:Lib/player/models/ResumeSeriesModel;

    invoke-virtual {v1}, Lib/player/models/ResumeSeriesModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lio/realm/RealmQuery;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/realm/RealmQuery;->h()Lio/realm/M;

    move-result-object p1

    check-cast p1, Lib/player/models/SeriesModel;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lib/player/models/SeriesModel;->setIs_recent(Z)V

    invoke-virtual {v1}, Lib/player/models/ResumeSeriesModel;->getSeason_pos()I

    move-result v0

    invoke-virtual {p1, v0}, Lib/player/models/SeriesModel;->setSeason_pos(I)V

    invoke-virtual {v1}, Lib/player/models/ResumeSeriesModel;->getEpisode_pos()I

    move-result v0

    invoke-virtual {p1, v0}, Lib/player/models/SeriesModel;->setEpisode_pos(I)V

    :cond_0
    return-void

    :pswitch_0
    const-class v0, Lib/player/models/SeriesModel;

    invoke-virtual {p1, v0}, Lio/realm/y;->G(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p1

    const-string v0, "name"

    iget-object v1, p0, Lib/player/base/e;->q:Lib/player/models/ResumeSeriesModel;

    invoke-virtual {v1}, Lib/player/models/ResumeSeriesModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lio/realm/RealmQuery;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/realm/RealmQuery;->h()Lio/realm/M;

    move-result-object p1

    check-cast p1, Lib/player/models/SeriesModel;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lib/player/models/SeriesModel;->setIs_recent(Z)V

    invoke-virtual {v1}, Lib/player/models/ResumeSeriesModel;->getSeason_pos()I

    move-result v0

    invoke-virtual {p1, v0}, Lib/player/models/SeriesModel;->setSeason_pos(I)V

    invoke-virtual {v1}, Lib/player/models/ResumeSeriesModel;->getEpisode_pos()I

    move-result v0

    invoke-virtual {p1, v0}, Lib/player/models/SeriesModel;->setEpisode_pos(I)V

    :cond_1
    return-void

    :pswitch_1
    const-class v0, Lib/player/models/SeriesModel;

    invoke-virtual {p1, v0}, Lio/realm/y;->G(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p1

    const-string v0, "name"

    iget-object v1, p0, Lib/player/base/e;->q:Lib/player/models/ResumeSeriesModel;

    invoke-virtual {v1}, Lib/player/models/ResumeSeriesModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lio/realm/RealmQuery;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/realm/RealmQuery;->h()Lio/realm/M;

    move-result-object p1

    check-cast p1, Lib/player/models/SeriesModel;

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lib/player/models/SeriesModel;->setIs_recent(Z)V

    invoke-virtual {v1}, Lib/player/models/ResumeSeriesModel;->getSeason_pos()I

    move-result v0

    invoke-virtual {p1, v0}, Lib/player/models/SeriesModel;->setSeason_pos(I)V

    invoke-virtual {v1}, Lib/player/models/ResumeSeriesModel;->getEpisode_pos()I

    move-result v0

    invoke-virtual {p1, v0}, Lib/player/models/SeriesModel;->setEpisode_pos(I)V

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
