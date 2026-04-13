.class public final synthetic LD0/f;
.super Ljava/lang/Object;

# interfaces
.implements LD0/q;
.implements Lz4/M;
.implements LI0/t;
.implements Lk0/h;
.implements Ly3/d;
.implements Lt4/h;
.implements Lr2/b;
.implements Lk0/o;
.implements Lk0/n;
.implements Lq2/f;
.implements LX3/a;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Ljava/lang/Object;

.field public final synthetic r:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    iput p2, p0, LD0/f;->b:I

    iput-object p1, p0, LD0/f;->q:Ljava/lang/Object;

    iput-object p3, p0, LD0/f;->r:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4

    iget v0, p0, LD0/f;->b:I

    sparse-switch v0, :sswitch_data_0

    iget-object v0, p0, LD0/f;->q:Ljava/lang/Object;

    check-cast v0, Lib/player/pages/series/SeriesPlayerActivity;

    iget-object v1, p0, LD0/f;->r:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    iput p1, v0, Lib/player/pages/series/SeriesPlayerActivity;->C0:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lib/player/pages/series/SeriesPlayerActivity;->y(Lib/player/models/TrackInfoObj;I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    sub-int/2addr p1, v2

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lib/player/models/SubtitleModel$DataModel;

    invoke-virtual {p1}, Lib/player/models/SubtitleModel$DataModel;->getAttributesModel()Lib/player/models/SubtitleModel$AttributesModel;

    move-result-object p1

    invoke-virtual {p1}, Lib/player/models/SubtitleModel$AttributesModel;->getFileModels()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget p1, v0, Lib/player/pages/series/SeriesPlayerActivity;->C0:I

    sub-int/2addr p1, v2

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lib/player/models/SubtitleModel$DataModel;

    invoke-virtual {p1}, Lib/player/models/SubtitleModel$DataModel;->getAttributesModel()Lib/player/models/SubtitleModel$AttributesModel;

    move-result-object p1

    invoke-virtual {p1}, Lib/player/models/SubtitleModel$AttributesModel;->getFileModels()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lib/player/models/SubtitleModel$FileModel;

    invoke-virtual {p1}, Lib/player/models/SubtitleModel$FileModel;->getFile_id()I

    move-result p1

    iget-object v1, v0, Lib/player/pages/series/SeriesPlayerActivity;->o0:Lib/player/base/helper/w;

    invoke-virtual {v1}, Lib/player/base/helper/w;->a0()Lib/player/models/SubTitleUserModel;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lib/player/pages/series/SeriesPlayerActivity;->o0:Lib/player/base/helper/w;

    invoke-virtual {v1}, Lib/player/base/helper/w;->a0()Lib/player/models/SubTitleUserModel;

    move-result-object v1

    invoke-virtual {v1}, Lib/player/models/SubTitleUserModel;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, La/a;->q(I)Lorg/json/JSONObject;

    move-result-object p1

    sget-object v2, Lib/player/base/n;->s:Ljava/lang/String;

    sget-object v3, Lib/player/base/n;->t:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, p1, v2, v3, v1}, LE5/d;->t(Lt4/g;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, v0, Lib/player/pages/series/SeriesPlayerActivity;->p0:Lib/player/models/WordModels;

    invoke-static {v0, p1, v2}, LB/f;->v(Lib/player/models/WordModels;Landroid/content/Context;I)V

    :cond_2
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, LD0/f;->q:Ljava/lang/Object;

    check-cast v0, Lib/player/pages/series/SeriesMobilePlayerActivity;

    iget-object v1, p0, LD0/f;->r:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    iput p1, v0, Lib/player/pages/series/SeriesMobilePlayerActivity;->H0:I

    if-nez p1, :cond_3

    const/4 p1, 0x0

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lib/player/pages/series/SeriesMobilePlayerActivity;->y(Lib/player/models/TrackInfoObj;I)V

    goto :goto_1

    :cond_3
    const/4 v2, 0x1

    sub-int/2addr p1, v2

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lib/player/models/SubtitleModel$DataModel;

    invoke-virtual {p1}, Lib/player/models/SubtitleModel$DataModel;->getAttributesModel()Lib/player/models/SubtitleModel$AttributesModel;

    move-result-object p1

    invoke-virtual {p1}, Lib/player/models/SubtitleModel$AttributesModel;->getFileModels()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    iget p1, v0, Lib/player/pages/series/SeriesMobilePlayerActivity;->H0:I

    sub-int/2addr p1, v2

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lib/player/models/SubtitleModel$DataModel;

    invoke-virtual {p1}, Lib/player/models/SubtitleModel$DataModel;->getAttributesModel()Lib/player/models/SubtitleModel$AttributesModel;

    move-result-object p1

    invoke-virtual {p1}, Lib/player/models/SubtitleModel$AttributesModel;->getFileModels()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lib/player/models/SubtitleModel$FileModel;

    invoke-virtual {p1}, Lib/player/models/SubtitleModel$FileModel;->getFile_id()I

    move-result p1

    iget-object v1, v0, Lib/player/pages/series/SeriesMobilePlayerActivity;->m0:Lib/player/base/helper/w;

    invoke-virtual {v1}, Lib/player/base/helper/w;->a0()Lib/player/models/SubTitleUserModel;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, v0, Lib/player/pages/series/SeriesMobilePlayerActivity;->m0:Lib/player/base/helper/w;

    invoke-virtual {v1}, Lib/player/base/helper/w;->a0()Lib/player/models/SubTitleUserModel;

    move-result-object v1

    invoke-virtual {v1}, Lib/player/models/SubTitleUserModel;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, La/a;->q(I)Lorg/json/JSONObject;

    move-result-object p1

    sget-object v2, Lib/player/base/n;->s:Ljava/lang/String;

    sget-object v3, Lib/player/base/n;->t:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, p1, v2, v3, v1}, LE5/d;->t(Lt4/g;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, v0, Lib/player/pages/series/SeriesMobilePlayerActivity;->n0:Lib/player/models/WordModels;

    invoke-static {v0, p1, v2}, LB/f;->v(Lib/player/models/WordModels;Landroid/content/Context;I)V

    :cond_5
    :goto_1
    return-void

    :sswitch_1
    iget-object v0, p0, LD0/f;->q:Ljava/lang/Object;

    check-cast v0, Lib/player/pages/movie/MoviePlayerActivity;

    iget-object v1, p0, LD0/f;->r:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    iput p1, v0, Lib/player/pages/movie/MoviePlayerActivity;->C0:I

    if-nez p1, :cond_6

    const/4 p1, 0x0

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lib/player/pages/movie/MoviePlayerActivity;->y(Lib/player/models/TrackInfoObj;I)V

    goto :goto_2

    :cond_6
    const/4 v2, 0x1

    sub-int/2addr p1, v2

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lib/player/models/SubtitleModel$DataModel;

    invoke-virtual {p1}, Lib/player/models/SubtitleModel$DataModel;->getAttributesModel()Lib/player/models/SubtitleModel$AttributesModel;

    move-result-object p1

    invoke-virtual {p1}, Lib/player/models/SubtitleModel$AttributesModel;->getFileModels()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    iget p1, v0, Lib/player/pages/movie/MoviePlayerActivity;->C0:I

    sub-int/2addr p1, v2

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lib/player/models/SubtitleModel$DataModel;

    invoke-virtual {p1}, Lib/player/models/SubtitleModel$DataModel;->getAttributesModel()Lib/player/models/SubtitleModel$AttributesModel;

    move-result-object p1

    invoke-virtual {p1}, Lib/player/models/SubtitleModel$AttributesModel;->getFileModels()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lib/player/models/SubtitleModel$FileModel;

    invoke-virtual {p1}, Lib/player/models/SubtitleModel$FileModel;->getFile_id()I

    move-result p1

    iget-object v1, v0, Lib/player/pages/movie/MoviePlayerActivity;->A0:Lib/player/base/helper/w;

    invoke-virtual {v1}, Lib/player/base/helper/w;->a0()Lib/player/models/SubTitleUserModel;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, v0, Lib/player/pages/movie/MoviePlayerActivity;->A0:Lib/player/base/helper/w;

    invoke-virtual {v1}, Lib/player/base/helper/w;->a0()Lib/player/models/SubTitleUserModel;

    move-result-object v1

    invoke-virtual {v1}, Lib/player/models/SubTitleUserModel;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, La/a;->q(I)Lorg/json/JSONObject;

    move-result-object p1

    sget-object v2, Lib/player/base/n;->s:Ljava/lang/String;

    sget-object v3, Lib/player/base/n;->t:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, p1, v2, v3, v1}, LE5/d;->t(Lt4/g;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, v0, Lib/player/pages/movie/MoviePlayerActivity;->B0:Lib/player/models/WordModels;

    invoke-static {v0, p1, v2}, LB/f;->v(Lib/player/models/WordModels;Landroid/content/Context;I)V

    :cond_8
    :goto_2
    return-void

    :sswitch_2
    iget-object v0, p0, LD0/f;->q:Ljava/lang/Object;

    check-cast v0, Lib/player/pages/movie/MovieMobilePlayerActivity;

    iget-object v1, p0, LD0/f;->r:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    iput p1, v0, Lib/player/pages/movie/MovieMobilePlayerActivity;->G0:I

    const/4 v2, -0x1

    if-ne p1, v2, :cond_9

    const/4 p1, 0x0

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lib/player/pages/movie/MovieMobilePlayerActivity;->y(Lib/player/models/TrackInfoObj;I)V

    goto :goto_3

    :cond_9
    const/4 v2, 0x1

    sub-int/2addr p1, v2

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lib/player/models/SubtitleModel$DataModel;

    invoke-virtual {p1}, Lib/player/models/SubtitleModel$DataModel;->getAttributesModel()Lib/player/models/SubtitleModel$AttributesModel;

    move-result-object p1

    invoke-virtual {p1}, Lib/player/models/SubtitleModel$AttributesModel;->getFileModels()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a

    iget p1, v0, Lib/player/pages/movie/MovieMobilePlayerActivity;->G0:I

    sub-int/2addr p1, v2

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lib/player/models/SubtitleModel$DataModel;

    invoke-virtual {p1}, Lib/player/models/SubtitleModel$DataModel;->getAttributesModel()Lib/player/models/SubtitleModel$AttributesModel;

    move-result-object p1

    invoke-virtual {p1}, Lib/player/models/SubtitleModel$AttributesModel;->getFileModels()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lib/player/models/SubtitleModel$FileModel;

    invoke-virtual {p1}, Lib/player/models/SubtitleModel$FileModel;->getFile_id()I

    move-result p1

    iget-object v1, v0, Lib/player/pages/movie/MovieMobilePlayerActivity;->E0:Lib/player/base/helper/w;

    invoke-virtual {v1}, Lib/player/base/helper/w;->a0()Lib/player/models/SubTitleUserModel;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v1, v0, Lib/player/pages/movie/MovieMobilePlayerActivity;->E0:Lib/player/base/helper/w;

    invoke-virtual {v1}, Lib/player/base/helper/w;->a0()Lib/player/models/SubTitleUserModel;

    move-result-object v1

    invoke-virtual {v1}, Lib/player/models/SubTitleUserModel;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, La/a;->q(I)Lorg/json/JSONObject;

    move-result-object p1

    sget-object v2, Lib/player/base/n;->s:Ljava/lang/String;

    sget-object v3, Lib/player/base/n;->t:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, p1, v2, v3, v1}, LE5/d;->t(Lt4/g;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, v0, Lib/player/pages/movie/MovieMobilePlayerActivity;->F0:Lib/player/models/WordModels;

    invoke-static {v0, p1, v2}, LB/f;->v(Lib/player/models/WordModels;Landroid/content/Context;I)V

    :cond_b
    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x3 -> :sswitch_1
        0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method public accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, LD0/f;->q:Ljava/lang/Object;

    check-cast v0, LA/d;

    iget-object v1, p0, LD0/f;->r:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/source/A;

    check-cast p1, Landroidx/media3/exoplayer/source/K;

    iget v2, v0, LA/d;->q:I

    iget-object v0, v0, LA/d;->r:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/source/E;

    invoke-interface {p1, v2, v0, v1}, Landroidx/media3/exoplayer/source/K;->onDownstreamFormatChanged(ILandroidx/media3/exoplayer/source/E;Landroidx/media3/exoplayer/source/A;)V

    return-void
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    iget-object v0, p0, LD0/f;->q:Ljava/lang/Object;

    check-cast v0, Lq2/h;

    iget-object v1, p0, LD0/f;->r:Ljava/lang/Object;

    check-cast v1, Lj2/j;

    move-object v2, p1

    check-cast v2, Landroid/database/sqlite/SQLiteDatabase;

    iget-object p1, v0, Lq2/h;->s:Lq2/a;

    iget v3, p1, Lq2/a;->b:I

    invoke-virtual {v0, v2, v1, v3}, Lq2/h;->h(Landroid/database/sqlite/SQLiteDatabase;Lj2/j;I)Ljava/util/ArrayList;

    move-result-object v10

    invoke-static {}, Lg2/c;->values()[Lg2/c;

    move-result-object v3

    array-length v4, v3

    const/4 v11, 0x0

    move v5, v11

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    iget-object v7, v1, Lj2/j;->c:Lg2/c;

    if-ne v6, v7, :cond_0

    goto :goto_1

    :cond_0
    iget v7, p1, Lq2/a;->b:I

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v7, v8

    if-gtz v7, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v1, v6}, Lj2/j;->b(Lg2/c;)Lj2/j;

    move-result-object v6

    invoke-virtual {v0, v2, v6, v7}, Lq2/h;->h(Landroid/database/sqlite/SQLiteDatabase;Lj2/j;I)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "event_id IN ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v1, v11

    :goto_3
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v12, 0x1

    if-ge v1, v3, :cond_4

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq2/b;

    iget-wide v3, v3, Lq2/b;->a:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v12

    if-ge v1, v3, :cond_3

    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "name"

    const-string v3, "value"

    const-string v4, "event_id"

    filled-new-array {v4, v1, v3}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v3, "event_metadata"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :goto_4
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_5

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    new-instance v2, Lq2/g;

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lq2/g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :cond_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v10}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq2/b;

    iget-wide v2, v1, Lq2/b;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_5

    :cond_7
    iget-object v4, v1, Lq2/b;->c:Lj2/i;

    invoke-virtual {v4}, Lj2/i;->c()Lj2/h;

    move-result-object v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lq2/g;

    iget-object v7, v6, Lq2/g;->a:Ljava/lang/String;

    iget-object v6, v6, Lq2/g;->b:Ljava/lang/String;

    invoke-virtual {v4, v7, v6}, Lj2/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_8
    iget-object v1, v1, Lq2/b;->b:Lj2/j;

    invoke-virtual {v4}, Lj2/h;->b()Lj2/i;

    move-result-object v4

    new-instance v5, Lq2/b;

    invoke-direct {v5, v2, v3, v1, v4}, Lq2/b;-><init>(JLj2/j;Lj2/i;)V

    invoke-interface {v0, v5}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_5

    :cond_9
    return-object v10

    :catchall_0
    move-exception v0

    move-object p1, v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw p1
.end method

.method public c(LD5/g;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, LD0/f;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LD0/f;->q:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, LD0/f;->r:Ljava/lang/Object;

    check-cast v1, Ly3/b;

    :try_start_0
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, v1, Ly3/b;->f:Ly3/d;

    invoke-interface {v0, p1}, Ly3/d;->c(LD5/g;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p1

    :pswitch_0
    iget-object v0, p0, LD0/f;->q:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, LD0/f;->r:Ljava/lang/Object;

    check-cast v1, Lq0/h;

    const-class v2, Landroid/content/Context;

    invoke-virtual {p1, v2}, LD5/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iget v1, v1, Lq0/h;->b:I

    packed-switch v1, :pswitch_data_1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/google/firebase/FirebaseCommonRegistrar;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    goto :goto_0

    :pswitch_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.hardware.type.television"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p1, "tv"

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.hardware.type.watch"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string p1, "watch"

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.hardware.type.automotive"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string p1, "auto"

    goto :goto_0

    :cond_3
    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v1, "android.hardware.type.embedded"

    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "embedded"

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    new-instance v1, Le4/a;

    invoke-direct {v1, v0, p1}, Le4/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x8
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public d(ILandroidx/media3/common/TrackGroup;[I)Lp3/Y;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v3, p2

    iget v1, v0, LD0/f;->b:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, LD0/f;->q:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, LD0/l;

    iget-object v1, v0, LD0/f;->r:Ljava/lang/Object;

    move-object v7, v1

    check-cast v7, Ljava/lang/String;

    invoke-static {}, Lp3/H;->i()Lp3/E;

    move-result-object v8

    const/4 v1, 0x0

    move v4, v1

    :goto_0
    iget v1, v3, Landroidx/media3/common/TrackGroup;->length:I

    if-ge v4, v1, :cond_0

    new-instance v1, LD0/p;

    aget v6, p3, v4

    move/from16 v2, p1

    invoke-direct/range {v1 .. v7}, LD0/p;-><init>(ILandroidx/media3/common/TrackGroup;ILD0/l;ILjava/lang/String;)V

    invoke-virtual {v8, v1}, Lcom/google/android/gms/internal/play_billing/w;->a(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v8}, Lp3/E;->i()Lp3/Y;

    move-result-object v1

    return-object v1

    :pswitch_0
    iget-object v1, v0, LD0/f;->q:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, LD0/l;

    iget-object v1, v0, LD0/f;->r:Ljava/lang/Object;

    check-cast v1, [I

    aget v7, v1, p1

    iget v1, v5, Landroidx/media3/common/TrackSelectionParameters;->viewportWidth:I

    iget v2, v5, Landroidx/media3/common/TrackSelectionParameters;->viewportHeight:I

    iget-boolean v4, v5, Landroidx/media3/common/TrackSelectionParameters;->viewportOrientationMayChange:Z

    const v11, 0x7fffffff

    if-eq v1, v11, :cond_8

    if-ne v2, v11, :cond_1

    goto/16 :goto_6

    :cond_1
    move v8, v11

    const/4 v6, 0x0

    :goto_1
    iget v12, v3, Landroidx/media3/common/TrackGroup;->length:I

    if-ge v6, v12, :cond_7

    invoke-virtual {v3, v6}, Landroidx/media3/common/TrackGroup;->getFormat(I)Landroidx/media3/common/Format;

    move-result-object v12

    iget v13, v12, Landroidx/media3/common/Format;->width:I

    if-lez v13, :cond_6

    iget v14, v12, Landroidx/media3/common/Format;->height:I

    if-lez v14, :cond_6

    if-eqz v4, :cond_4

    if-le v13, v14, :cond_2

    const/4 v15, 0x1

    goto :goto_2

    :cond_2
    const/4 v15, 0x0

    :goto_2
    if-le v1, v2, :cond_3

    const/4 v9, 0x1

    goto :goto_3

    :cond_3
    const/4 v9, 0x0

    :goto_3
    if-eq v15, v9, :cond_4

    move v9, v1

    move v15, v2

    goto :goto_4

    :cond_4
    move v15, v1

    move v9, v2

    :goto_4
    mul-int v10, v13, v9

    mul-int v11, v14, v15

    if-lt v10, v11, :cond_5

    new-instance v9, Landroid/graphics/Point;

    invoke-static {v11, v13}, Lk0/C;->f(II)I

    move-result v10

    invoke-direct {v9, v15, v10}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_5

    :cond_5
    new-instance v11, Landroid/graphics/Point;

    invoke-static {v10, v14}, Lk0/C;->f(II)I

    move-result v10

    invoke-direct {v11, v10, v9}, Landroid/graphics/Point;-><init>(II)V

    move-object v9, v11

    :goto_5
    iget v10, v12, Landroidx/media3/common/Format;->width:I

    iget v11, v12, Landroidx/media3/common/Format;->height:I

    mul-int v12, v10, v11

    iget v13, v9, Landroid/graphics/Point;->x:I

    int-to-float v13, v13

    const v14, 0x3f7ae148    # 0.98f

    mul-float/2addr v13, v14

    float-to-int v13, v13

    if-lt v10, v13, :cond_6

    iget v9, v9, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    mul-float/2addr v9, v14

    float-to-int v9, v9

    if-lt v11, v9, :cond_6

    if-ge v12, v8, :cond_6

    move v8, v12

    :cond_6
    add-int/lit8 v6, v6, 0x1

    const v11, 0x7fffffff

    goto :goto_1

    :cond_7
    move v9, v8

    goto :goto_7

    :cond_8
    :goto_6
    const v9, 0x7fffffff

    :goto_7
    invoke-static {}, Lp3/H;->i()Lp3/E;

    move-result-object v10

    const/4 v4, 0x0

    :goto_8
    iget v1, v3, Landroidx/media3/common/TrackGroup;->length:I

    if-ge v4, v1, :cond_b

    invoke-virtual {v3, v4}, Landroidx/media3/common/TrackGroup;->getFormat(I)Landroidx/media3/common/Format;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/Format;->getPixelCount()I

    move-result v1

    const v11, 0x7fffffff

    if-eq v9, v11, :cond_a

    const/4 v2, -0x1

    if-eq v1, v2, :cond_9

    if-gt v1, v9, :cond_9

    goto :goto_9

    :cond_9
    const/4 v8, 0x0

    goto :goto_a

    :cond_a
    :goto_9
    const/4 v8, 0x1

    :goto_a
    new-instance v1, LD0/s;

    aget v6, p3, v4

    move/from16 v2, p1

    invoke-direct/range {v1 .. v8}, LD0/s;-><init>(ILandroidx/media3/common/TrackGroup;ILD0/l;IIZ)V

    invoke-virtual {v10, v1}, Lcom/google/android/gms/internal/play_billing/w;->a(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v3, p2

    goto :goto_8

    :cond_b
    invoke-virtual {v10}, Lp3/E;->i()Lp3/Y;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public e()[LI0/q;
    .locals 3

    iget-object v0, p0, LD0/f;->q:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/source/r;

    iget-object v1, p0, LD0/f;->r:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/common/Format;

    iget-object v2, v0, Landroidx/media3/exoplayer/source/r;->c:Lx2/f;

    invoke-virtual {v2, v1}, Lx2/f;->supportsFormat(Landroidx/media3/common/Format;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lf1/h;

    iget-object v0, v0, Landroidx/media3/exoplayer/source/r;->c:Lx2/f;

    invoke-virtual {v0, v1}, Lx2/f;->k(Landroidx/media3/common/Format;)Lf1/m;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lf1/h;-><init>(Lf1/m;Landroidx/media3/common/Format;)V

    goto :goto_0

    :cond_0
    new-instance v2, Landroidx/media3/exoplayer/source/q;

    invoke-direct {v2, v1}, Landroidx/media3/exoplayer/source/q;-><init>(Landroidx/media3/common/Format;)V

    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [LI0/q;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    return-object v0
.end method

.method public execute()Ljava/lang/Object;
    .locals 7

    iget v0, p0, LD0/f;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LD0/f;->q:Ljava/lang/Object;

    check-cast v0, LM3/c;

    iget-object v1, p0, LD0/f;->r:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    iget-object v3, v0, LM3/c;->i:Ljava/lang/Object;

    check-cast v3, Lq2/c;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    check-cast v3, Lq2/h;

    sget-object v6, Lm2/c;->v:Lm2/c;

    invoke-virtual {v3, v4, v5, v6, v2}, Lq2/h;->r(JLm2/c;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    iget-object v0, p0, LD0/f;->q:Ljava/lang/Object;

    check-cast v0, LM3/c;

    iget-object v1, p0, LD0/f;->r:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Iterable;

    iget-object v0, v0, LM3/c;->c:Ljava/lang/Object;

    check-cast v0, Lq2/d;

    check-cast v0, Lq2/h;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DELETE FROM events WHERE _id in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lq2/h;->x(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lq2/h;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    :goto_1
    const/4 v0, 0x0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method

.method public g(Ljava/lang/Object;Landroidx/media3/common/FlagSet;)V
    .locals 3

    iget-object v0, p0, LD0/f;->q:Ljava/lang/Object;

    check-cast v0, Lq0/j;

    iget-object v1, p0, LD0/f;->r:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/common/Player;

    check-cast p1, Lq0/c;

    new-instance v2, Lp5/p;

    iget-object v0, v0, Lq0/j;->t:Landroid/util/SparseArray;

    invoke-direct {v2, p2, v0}, Lp5/p;-><init>(Landroidx/media3/common/FlagSet;Landroid/util/SparseArray;)V

    invoke-interface {p1, v1, v2}, Lq0/c;->b(Landroidx/media3/common/Player;Lp5/p;)V

    return-void
.end method

.method public i(LX3/b;)V
    .locals 2

    iget-object v0, p0, LD0/f;->q:Ljava/lang/Object;

    check-cast v0, LX3/a;

    iget-object v1, p0, LD0/f;->r:Ljava/lang/Object;

    check-cast v1, LX3/a;

    invoke-interface {v0, p1}, LX3/a;->i(LX3/b;)V

    invoke-interface {v1, p1}, LX3/a;->i(LX3/b;)V

    return-void
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, LD0/f;->q:Ljava/lang/Object;

    check-cast v0, Lq0/b;

    iget-object v1, p0, LD0/f;->r:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/source/A;

    check-cast p1, Lq0/c;

    invoke-interface {p1, v0, v1}, Lq0/c;->c(Lq0/b;Landroidx/media3/exoplayer/source/A;)V

    return-void
.end method

.method public j(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, LD0/f;->q:Ljava/lang/Object;

    check-cast v0, Lib/player/base/k;

    iget-object v1, p0, LD0/f;->r:Ljava/lang/Object;

    check-cast v1, Lio/realm/T;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v1}, Lio/realm/T;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    iget-object v1, v0, Lib/player/base/k;->R:Lio/realm/y;

    new-instance v2, Lib/player/base/b;

    const/4 v3, 0x2

    invoke-direct {v2, v3, p1}, Lib/player/base/b;-><init>(ILjava/util/List;)V

    invoke-virtual {v1, v2}, Lio/realm/y;->B(Lio/realm/x;)V

    :cond_0
    iget-boolean v1, v0, Lib/player/base/k;->W:Z

    if-nez v1, :cond_1

    invoke-virtual {v0, p1}, Lib/player/base/k;->M(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public k(Z)V
    .locals 13

    iget-object v0, p0, LD0/f;->q:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lz4/f;

    iget-object v0, p0, LD0/f;->r:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object p1, v2, Lz4/f;->N0:Lib/player/base/helper/w;

    invoke-virtual {p1}, Lib/player/base/helper/w;->M()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iget-object v1, v2, Lz4/f;->S0:Ljava/lang/String;

    iget-object v3, v2, Lz4/f;->X0:Ljava/lang/String;

    iget-object v4, v2, Lz4/f;->T0:Ljava/lang/String;

    iget-object v5, v2, Lz4/f;->N0:Lib/player/base/helper/w;

    invoke-virtual {v5}, Lib/player/base/helper/w;->x()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lib/player/app/MyApp;->x:Ljava/lang/String;

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v8, "mac_address"

    invoke-virtual {v7, v8, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "playlist_id"

    invoke-virtual {v7, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "playlist_name"

    invoke-virtual {v7, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "playlist_url"

    invoke-virtual {v7, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "playlist_type"

    invoke-virtual {v7, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "app_type"

    invoke-virtual {v7, p1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "version"

    invoke-virtual {v7, p1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-static {v7}, La/a;->o(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lv4/c;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-wide/16 v4, 0x2

    mul-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, La/a;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "[\\n\\r]"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lv4/c;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "___"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Lz4/f;->V0:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, La/a;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lv4/c;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lz4/f;->V0:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "__"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, La/a;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lv4/c;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/a;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lv4/c;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/a;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lv4/c;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/a;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    new-instance v1, Lt4/e;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v4, Lib/player/models/DataRequestBody;

    invoke-direct {v4, p1}, Lib/player/models/DataRequestBody;-><init>(Ljava/lang/String;)V

    sget-object v5, Lib/player/base/n;->b:Ljava/lang/String;

    sget-object v6, Lib/player/base/n;->g:Ljava/lang/String;

    const/16 v3, 0x3e8

    invoke-virtual/range {v1 .. v12}, Lt4/e;->c(Lt4/d;ILib/player/models/DataRequestBody;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, v2, Lz4/f;->M0:Landroid/content/Context;

    iget-object v0, v2, Lz4/f;->O0:Lib/player/models/WordModels;

    invoke-virtual {v0}, Lib/player/models/WordModels;->getInvalid_url()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
