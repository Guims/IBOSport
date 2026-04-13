.class public final Lio/realm/Y;
.super Lib/player/models/EpisodeInfoModel;

# interfaces
.implements Lio/realm/internal/y;


# static fields
.field public static final r:Lio/realm/internal/OsObjectSchemaInfo;


# instance fields
.field public b:Lio/realm/X;

.field public q:Lio/realm/v;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, LS2/f;

    const-string v1, "EpisodeInfoModel"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, LS2/f;-><init>(Ljava/lang/String;I)V

    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "tmdb_id"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, LS2/f;->a(Ljava/lang/String;Lio/realm/RealmFieldType;Z)V

    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string v4, "bitrate"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v2, v5}, LS2/f;->a(Ljava/lang/String;Lio/realm/RealmFieldType;Z)V

    const-string v4, "duration"

    invoke-virtual {v0, v4, v1, v3}, LS2/f;->a(Ljava/lang/String;Lio/realm/RealmFieldType;Z)V

    const-string v4, "duration_secs"

    invoke-virtual {v0, v4, v2, v5}, LS2/f;->a(Ljava/lang/String;Lio/realm/RealmFieldType;Z)V

    const-string v2, "name"

    invoke-virtual {v0, v2, v1, v3}, LS2/f;->a(Ljava/lang/String;Lio/realm/RealmFieldType;Z)V

    const-string v2, "rating"

    invoke-virtual {v0, v2, v1, v3}, LS2/f;->a(Ljava/lang/String;Lio/realm/RealmFieldType;Z)V

    const-string v2, "releasedate"

    invoke-virtual {v0, v2, v1, v3}, LS2/f;->a(Ljava/lang/String;Lio/realm/RealmFieldType;Z)V

    const-string v2, "plot"

    invoke-virtual {v0, v2, v1, v3}, LS2/f;->a(Ljava/lang/String;Lio/realm/RealmFieldType;Z)V

    const-string v2, "movie_image"

    invoke-virtual {v0, v2, v1, v3}, LS2/f;->a(Ljava/lang/String;Lio/realm/RealmFieldType;Z)V

    invoke-virtual {v0}, LS2/f;->b()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    sput-object v0, Lio/realm/Y;->r:Lio/realm/internal/OsObjectSchemaInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lib/player/models/EpisodeInfoModel;-><init>()V

    iget-object v0, p0, Lio/realm/Y;->q:Lio/realm/v;

    invoke-virtual {v0}, Lio/realm/v;->a()V

    return-void
.end method

.method public static c(Lio/realm/y;Lio/realm/X;Lib/player/models/EpisodeInfoModel;Ljava/util/HashMap;Ljava/util/Set;)Lib/player/models/EpisodeInfoModel;
    .locals 7

    iget-object v0, p0, Lio/realm/y;->z:Lio/realm/k;

    instance-of v1, p2, Lio/realm/internal/y;

    if-eqz v1, :cond_1

    invoke-static {p2}, Lio/realm/O;->isFrozen(Lio/realm/M;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object v1, p2

    check-cast v1, Lio/realm/internal/y;

    invoke-interface {v1}, Lio/realm/internal/y;->b()Lio/realm/v;

    move-result-object v2

    iget-object v2, v2, Lio/realm/v;->e:Lio/realm/d;

    if-eqz v2, :cond_1

    invoke-interface {v1}, Lio/realm/internal/y;->b()Lio/realm/v;

    move-result-object v1

    iget-object v1, v1, Lio/realm/v;->e:Lio/realm/d;

    iget-wide v2, v1, Lio/realm/d;->q:J

    iget-wide v4, p0, Lio/realm/d;->q:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object v1, v1, Lio/realm/d;->r:Lio/realm/J;

    iget-object v1, v1, Lio/realm/J;->c:Ljava/lang/String;

    iget-object v2, p0, Lio/realm/d;->r:Lio/realm/J;

    iget-object v2, v2, Lio/realm/J;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p2

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Objects which belong to Realm instances in other threads cannot be copied into this Realm instance."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    sget-object v1, Lio/realm/d;->y:LB5/c;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/c;

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/internal/y;

    if-eqz v2, :cond_2

    check-cast v2, Lib/player/models/EpisodeInfoModel;

    return-object v2

    :cond_2
    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/internal/y;

    if-eqz v2, :cond_3

    check-cast v2, Lib/player/models/EpisodeInfoModel;

    return-object v2

    :cond_3
    const-class v2, Lib/player/models/EpisodeInfoModel;

    invoke-virtual {v0, v2}, Lio/realm/k;->b(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v3

    new-instance v4, Lio/realm/internal/objectstore/OsObjectBuilder;

    invoke-direct {v4, v3, p4}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;Ljava/util/Set;)V

    iget-wide v5, p1, Lio/realm/X;->e:J

    invoke-virtual {p2}, Lib/player/models/EpisodeInfoModel;->realmGet$tmdb_id()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v4, v5, v6, p4}, Lio/realm/internal/objectstore/OsObjectBuilder;->r(JLjava/lang/String;)V

    iget-wide v5, p1, Lio/realm/X;->f:J

    invoke-virtual {p2}, Lib/player/models/EpisodeInfoModel;->realmGet$bitrate()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {v4, v5, v6, p4}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/Integer;)V

    iget-wide v5, p1, Lio/realm/X;->g:J

    invoke-virtual {p2}, Lib/player/models/EpisodeInfoModel;->realmGet$duration()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v4, v5, v6, p4}, Lio/realm/internal/objectstore/OsObjectBuilder;->r(JLjava/lang/String;)V

    iget-wide v5, p1, Lio/realm/X;->h:J

    invoke-virtual {p2}, Lib/player/models/EpisodeInfoModel;->realmGet$duration_secs()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {v4, v5, v6, p4}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/Integer;)V

    iget-wide v5, p1, Lio/realm/X;->i:J

    invoke-virtual {p2}, Lib/player/models/EpisodeInfoModel;->realmGet$name()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v4, v5, v6, p4}, Lio/realm/internal/objectstore/OsObjectBuilder;->r(JLjava/lang/String;)V

    iget-wide v5, p1, Lio/realm/X;->j:J

    invoke-virtual {p2}, Lib/player/models/EpisodeInfoModel;->realmGet$rating()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v4, v5, v6, p4}, Lio/realm/internal/objectstore/OsObjectBuilder;->r(JLjava/lang/String;)V

    iget-wide v5, p1, Lio/realm/X;->k:J

    invoke-virtual {p2}, Lib/player/models/EpisodeInfoModel;->realmGet$releasedate()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v4, v5, v6, p4}, Lio/realm/internal/objectstore/OsObjectBuilder;->r(JLjava/lang/String;)V

    iget-wide v5, p1, Lio/realm/X;->l:J

    invoke-virtual {p2}, Lib/player/models/EpisodeInfoModel;->realmGet$plot()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v4, v5, v6, p4}, Lio/realm/internal/objectstore/OsObjectBuilder;->r(JLjava/lang/String;)V

    iget-wide v5, p1, Lio/realm/X;->m:J

    invoke-virtual {p2}, Lib/player/models/EpisodeInfoModel;->realmGet$movie_image()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, v5, v6, p1}, Lio/realm/internal/objectstore/OsObjectBuilder;->r(JLjava/lang/String;)V

    invoke-virtual {v4}, Lio/realm/internal/objectstore/OsObjectBuilder;->s()Lio/realm/internal/UncheckedRow;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lio/realm/c;

    invoke-virtual {v0, v2}, Lio/realm/k;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object v0

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {p4, p0, p1, v0}, Lio/realm/c;->b(Lio/realm/d;Lio/realm/internal/A;Lio/realm/internal/c;)V

    new-instance p0, Lio/realm/Y;

    invoke-direct {p0}, Lio/realm/Y;-><init>()V

    invoke-virtual {p4}, Lio/realm/c;->a()V

    invoke-virtual {p3, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public static d(Lio/realm/y;Lib/player/models/EpisodeInfoModel;Ljava/util/HashMap;)J
    .locals 11

    iget-object v0, p0, Lio/realm/y;->z:Lio/realm/k;

    instance-of v1, p1, Lio/realm/internal/y;

    if-eqz v1, :cond_0

    invoke-static {p1}, Lio/realm/O;->isFrozen(Lio/realm/M;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, p1

    check-cast v1, Lio/realm/internal/y;

    invoke-interface {v1}, Lio/realm/internal/y;->b()Lio/realm/v;

    move-result-object v2

    iget-object v2, v2, Lio/realm/v;->e:Lio/realm/d;

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lio/realm/internal/y;->b()Lio/realm/v;

    move-result-object v2

    iget-object v2, v2, Lio/realm/v;->e:Lio/realm/d;

    iget-object v2, v2, Lio/realm/d;->r:Lio/realm/J;

    iget-object v2, v2, Lio/realm/J;->c:Ljava/lang/String;

    iget-object p0, p0, Lio/realm/d;->r:Lio/realm/J;

    iget-object p0, p0, Lio/realm/J;->c:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {v1}, Lio/realm/internal/y;->b()Lio/realm/v;

    move-result-object p0

    iget-object p0, p0, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {p0}, Lio/realm/internal/A;->F()J

    move-result-wide p0

    return-wide p0

    :cond_0
    const-class p0, Lib/player/models/EpisodeInfoModel;

    invoke-virtual {v0, p0}, Lio/realm/k;->b(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    iget-wide v2, v1, Lio/realm/internal/Table;->b:J

    invoke-virtual {v0, p0}, Lio/realm/k;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object p0

    check-cast p0, Lio/realm/X;

    invoke-static {v1}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lib/player/models/EpisodeInfoModel;->realmGet$tmdb_id()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    iget-wide v4, p0, Lio/realm/X;->e:J

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_0

    :cond_1
    iget-wide v4, p0, Lio/realm/X;->e:J

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_0
    iget-wide v4, p0, Lio/realm/X;->f:J

    invoke-virtual {p1}, Lib/player/models/EpisodeInfoModel;->realmGet$bitrate()I

    move-result p2

    int-to-long v8, p2

    const/4 v10, 0x0

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    invoke-virtual {p1}, Lib/player/models/EpisodeInfoModel;->realmGet$duration()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    iget-wide v4, p0, Lio/realm/X;->g:J

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_1

    :cond_2
    iget-wide v4, p0, Lio/realm/X;->g:J

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_1
    iget-wide v4, p0, Lio/realm/X;->h:J

    invoke-virtual {p1}, Lib/player/models/EpisodeInfoModel;->realmGet$duration_secs()I

    move-result p2

    int-to-long v8, p2

    const/4 v10, 0x0

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    invoke-virtual {p1}, Lib/player/models/EpisodeInfoModel;->realmGet$name()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    iget-wide v4, p0, Lio/realm/X;->i:J

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_2

    :cond_3
    iget-wide v4, p0, Lio/realm/X;->i:J

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_2
    invoke-virtual {p1}, Lib/player/models/EpisodeInfoModel;->realmGet$rating()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    iget-wide v4, p0, Lio/realm/X;->j:J

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_3

    :cond_4
    iget-wide v4, p0, Lio/realm/X;->j:J

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_3
    invoke-virtual {p1}, Lib/player/models/EpisodeInfoModel;->realmGet$releasedate()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    iget-wide v4, p0, Lio/realm/X;->k:J

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_4

    :cond_5
    iget-wide v4, p0, Lio/realm/X;->k:J

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_4
    invoke-virtual {p1}, Lib/player/models/EpisodeInfoModel;->realmGet$plot()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_6

    iget-wide v4, p0, Lio/realm/X;->l:J

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_5

    :cond_6
    iget-wide v4, p0, Lio/realm/X;->l:J

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_5
    invoke-virtual {p1}, Lib/player/models/EpisodeInfoModel;->realmGet$movie_image()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_7

    iget-wide v4, p0, Lio/realm/X;->m:J

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    return-wide v6

    :cond_7
    iget-wide v4, p0, Lio/realm/X;->m:J

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    return-wide v6
.end method

.method public static e(Lio/realm/y;Ljava/util/Iterator;Ljava/util/HashMap;)V
    .locals 12

    iget-object v0, p0, Lio/realm/y;->z:Lio/realm/k;

    const-class v1, Lib/player/models/EpisodeInfoModel;

    invoke-virtual {v0, v1}, Lio/realm/k;->b(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v2

    iget-wide v3, v2, Lio/realm/internal/Table;->b:J

    invoke-virtual {v0, v1}, Lio/realm/k;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object v0

    check-cast v0, Lio/realm/X;

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lib/player/models/EpisodeInfoModel;

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    instance-of v5, v1, Lio/realm/internal/y;

    if-eqz v5, :cond_1

    invoke-static {v1}, Lio/realm/O;->isFrozen(Lio/realm/M;)Z

    move-result v5

    if-nez v5, :cond_1

    move-object v5, v1

    check-cast v5, Lio/realm/internal/y;

    invoke-interface {v5}, Lio/realm/internal/y;->b()Lio/realm/v;

    move-result-object v6

    iget-object v6, v6, Lio/realm/v;->e:Lio/realm/d;

    if-eqz v6, :cond_1

    invoke-interface {v5}, Lio/realm/internal/y;->b()Lio/realm/v;

    move-result-object v6

    iget-object v6, v6, Lio/realm/v;->e:Lio/realm/d;

    iget-object v6, v6, Lio/realm/d;->r:Lio/realm/J;

    iget-object v6, v6, Lio/realm/J;->c:Ljava/lang/String;

    iget-object v7, p0, Lio/realm/d;->r:Lio/realm/J;

    iget-object v7, v7, Lio/realm/J;->c:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Lio/realm/internal/y;->b()Lio/realm/v;

    move-result-object v5

    iget-object v5, v5, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v5}, Lio/realm/internal/A;->F()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p2, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p2, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lib/player/models/EpisodeInfoModel;->realmGet$tmdb_id()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    iget-wide v5, v0, Lio/realm/X;->e:J

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_1

    :cond_2
    iget-wide v5, v0, Lio/realm/X;->e:J

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_1
    iget-wide v5, v0, Lio/realm/X;->f:J

    invoke-virtual {v1}, Lib/player/models/EpisodeInfoModel;->realmGet$bitrate()I

    move-result v9

    int-to-long v9, v9

    const/4 v11, 0x0

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    invoke-virtual {v1}, Lib/player/models/EpisodeInfoModel;->realmGet$duration()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    iget-wide v5, v0, Lio/realm/X;->g:J

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_2

    :cond_3
    iget-wide v5, v0, Lio/realm/X;->g:J

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_2
    iget-wide v5, v0, Lio/realm/X;->h:J

    invoke-virtual {v1}, Lib/player/models/EpisodeInfoModel;->realmGet$duration_secs()I

    move-result v9

    int-to-long v9, v9

    const/4 v11, 0x0

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    invoke-virtual {v1}, Lib/player/models/EpisodeInfoModel;->realmGet$name()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    iget-wide v5, v0, Lio/realm/X;->i:J

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_3

    :cond_4
    iget-wide v5, v0, Lio/realm/X;->i:J

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_3
    invoke-virtual {v1}, Lib/player/models/EpisodeInfoModel;->realmGet$rating()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    iget-wide v5, v0, Lio/realm/X;->j:J

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_4

    :cond_5
    iget-wide v5, v0, Lio/realm/X;->j:J

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_4
    invoke-virtual {v1}, Lib/player/models/EpisodeInfoModel;->realmGet$releasedate()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6

    iget-wide v5, v0, Lio/realm/X;->k:J

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_5

    :cond_6
    iget-wide v5, v0, Lio/realm/X;->k:J

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_5
    invoke-virtual {v1}, Lib/player/models/EpisodeInfoModel;->realmGet$plot()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_7

    iget-wide v5, v0, Lio/realm/X;->l:J

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_6

    :cond_7
    iget-wide v5, v0, Lio/realm/X;->l:J

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_6
    invoke-virtual {v1}, Lib/player/models/EpisodeInfoModel;->realmGet$movie_image()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_8

    iget-wide v5, v0, Lio/realm/X;->m:J

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto/16 :goto_0

    :cond_8
    iget-wide v5, v0, Lio/realm/X;->m:J

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    goto/16 :goto_0

    :cond_9
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lio/realm/Y;->q:Lio/realm/v;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lio/realm/d;->y:LB5/c;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/c;

    iget-object v1, v0, Lio/realm/c;->c:Lio/realm/internal/c;

    check-cast v1, Lio/realm/X;

    iput-object v1, p0, Lio/realm/Y;->b:Lio/realm/X;

    new-instance v1, Lio/realm/v;

    invoke-direct {v1, p0}, Lio/realm/v;-><init>(Lio/realm/O;)V

    iput-object v1, p0, Lio/realm/Y;->q:Lio/realm/v;

    iget-object v2, v0, Lio/realm/c;->a:Lio/realm/d;

    iput-object v2, v1, Lio/realm/v;->e:Lio/realm/d;

    iget-object v2, v0, Lio/realm/c;->b:Lio/realm/internal/A;

    iput-object v2, v1, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v0, v0, Lio/realm/c;->d:Ljava/util/List;

    iput-object v0, v1, Lio/realm/v;->f:Ljava/util/List;

    return-void
.end method

.method public final b()Lio/realm/v;
    .locals 1

    iget-object v0, p0, Lio/realm/Y;->q:Lio/realm/v;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    if-ne p0, p1, :cond_0

    goto/16 :goto_0

    :cond_0
    if-eqz p1, :cond_9

    const-class v0, Lio/realm/Y;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto/16 :goto_1

    :cond_1
    check-cast p1, Lio/realm/Y;

    iget-object v0, p0, Lio/realm/Y;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    iget-object v1, p1, Lio/realm/Y;->q:Lio/realm/v;

    iget-object v1, v1, Lio/realm/v;->e:Lio/realm/d;

    iget-object v2, v0, Lio/realm/d;->r:Lio/realm/J;

    iget-object v2, v2, Lio/realm/J;->c:Ljava/lang/String;

    iget-object v3, v1, Lio/realm/d;->r:Lio/realm/J;

    iget-object v3, v3, Lio/realm/J;->c:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lio/realm/d;->y()Z

    move-result v2

    invoke-virtual {v1}, Lio/realm/d;->y()Z

    move-result v3

    if-eq v2, v3, :cond_4

    goto :goto_1

    :cond_4
    iget-object v0, v0, Lio/realm/d;->t:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->getVersionID()Lio/realm/internal/t;

    move-result-object v0

    iget-object v1, v1, Lio/realm/d;->t:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v1}, Lio/realm/internal/OsSharedRealm;->getVersionID()Lio/realm/internal/t;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/realm/internal/t;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lio/realm/Y;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v0}, Lio/realm/internal/A;->d()Lio/realm/internal/Table;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/internal/Table;->k()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lio/realm/Y;->q:Lio/realm/v;

    iget-object v1, v1, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v1}, Lio/realm/internal/A;->d()Lio/realm/internal/Table;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/internal/Table;->k()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_1

    :cond_6
    if-eqz v1, :cond_7

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lio/realm/Y;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v0}, Lio/realm/internal/A;->F()J

    move-result-wide v0

    iget-object p1, p1, Lio/realm/Y;->q:Lio/realm/v;

    iget-object p1, p1, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {p1}, Lio/realm/internal/A;->F()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-eqz p1, :cond_8

    goto :goto_1

    :cond_8
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_9
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 6

    iget-object v0, p0, Lio/realm/Y;->q:Lio/realm/v;

    iget-object v1, v0, Lio/realm/v;->e:Lio/realm/d;

    iget-object v1, v1, Lio/realm/d;->r:Lio/realm/J;

    iget-object v1, v1, Lio/realm/J;->c:Ljava/lang/String;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v0}, Lio/realm/internal/A;->d()Lio/realm/internal/Table;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/internal/Table;->k()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lio/realm/Y;->q:Lio/realm/v;

    iget-object v2, v2, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v2}, Lio/realm/internal/A;->F()J

    move-result-wide v2

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    const/16 v5, 0x20f

    add-int/2addr v5, v1

    mul-int/lit8 v5, v5, 0x1f

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    :cond_1
    add-int/2addr v5, v4

    mul-int/lit8 v5, v5, 0x1f

    const/16 v0, 0x20

    ushr-long v0, v2, v0

    xor-long/2addr v0, v2

    long-to-int v0, v0

    add-int/2addr v5, v0

    return v5
.end method

.method public final realmGet$bitrate()I
    .locals 3

    iget-object v0, p0, Lio/realm/Y;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v0, p0, Lio/realm/Y;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/Y;->b:Lio/realm/X;

    iget-wide v1, v1, Lio/realm/X;->f:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/A;->j(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public final realmGet$duration()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lio/realm/Y;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v0, p0, Lio/realm/Y;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/Y;->b:Lio/realm/X;

    iget-wide v1, v1, Lio/realm/X;->g:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/A;->A(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final realmGet$duration_secs()I
    .locals 3

    iget-object v0, p0, Lio/realm/Y;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v0, p0, Lio/realm/Y;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/Y;->b:Lio/realm/X;

    iget-wide v1, v1, Lio/realm/X;->h:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/A;->j(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public final realmGet$movie_image()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lio/realm/Y;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v0, p0, Lio/realm/Y;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/Y;->b:Lio/realm/X;

    iget-wide v1, v1, Lio/realm/X;->m:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/A;->A(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final realmGet$name()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lio/realm/Y;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v0, p0, Lio/realm/Y;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/Y;->b:Lio/realm/X;

    iget-wide v1, v1, Lio/realm/X;->i:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/A;->A(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final realmGet$plot()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lio/realm/Y;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v0, p0, Lio/realm/Y;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/Y;->b:Lio/realm/X;

    iget-wide v1, v1, Lio/realm/X;->l:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/A;->A(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final realmGet$rating()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lio/realm/Y;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v0, p0, Lio/realm/Y;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/Y;->b:Lio/realm/X;

    iget-wide v1, v1, Lio/realm/X;->j:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/A;->A(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final realmGet$releasedate()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lio/realm/Y;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v0, p0, Lio/realm/Y;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/Y;->b:Lio/realm/X;

    iget-wide v1, v1, Lio/realm/X;->k:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/A;->A(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final realmGet$tmdb_id()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lio/realm/Y;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v0, p0, Lio/realm/Y;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/Y;->b:Lio/realm/X;

    iget-wide v1, v1, Lio/realm/X;->e:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/A;->A(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final realmSet$bitrate(I)V
    .locals 5

    iget-object v0, p0, Lio/realm/Y;->q:Lio/realm/v;

    iget-boolean v1, v0, Lio/realm/v;->b:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v0, p0, Lio/realm/Y;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/Y;->b:Lio/realm/X;

    iget-wide v1, v1, Lio/realm/X;->f:J

    int-to-long v3, p1

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/A;->m(JJ)V

    return-void
.end method

.method public final realmSet$duration(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lio/realm/Y;->q:Lio/realm/v;

    iget-boolean v1, v0, Lio/realm/v;->b:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    if-nez p1, :cond_1

    iget-object p1, p0, Lio/realm/Y;->q:Lio/realm/v;

    iget-object p1, p1, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v0, p0, Lio/realm/Y;->b:Lio/realm/X;

    iget-wide v0, v0, Lio/realm/X;->g:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/A;->v(J)V

    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/Y;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/Y;->b:Lio/realm/X;

    iget-wide v1, v1, Lio/realm/X;->g:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/A;->b(JLjava/lang/String;)V

    return-void
.end method

.method public final realmSet$duration_secs(I)V
    .locals 5

    iget-object v0, p0, Lio/realm/Y;->q:Lio/realm/v;

    iget-boolean v1, v0, Lio/realm/v;->b:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v0, p0, Lio/realm/Y;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/Y;->b:Lio/realm/X;

    iget-wide v1, v1, Lio/realm/X;->h:J

    int-to-long v3, p1

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/A;->m(JJ)V

    return-void
.end method

.method public final realmSet$movie_image(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lio/realm/Y;->q:Lio/realm/v;

    iget-boolean v1, v0, Lio/realm/v;->b:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    if-nez p1, :cond_1

    iget-object p1, p0, Lio/realm/Y;->q:Lio/realm/v;

    iget-object p1, p1, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v0, p0, Lio/realm/Y;->b:Lio/realm/X;

    iget-wide v0, v0, Lio/realm/X;->m:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/A;->v(J)V

    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/Y;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/Y;->b:Lio/realm/X;

    iget-wide v1, v1, Lio/realm/X;->m:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/A;->b(JLjava/lang/String;)V

    return-void
.end method

.method public final realmSet$name(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lio/realm/Y;->q:Lio/realm/v;

    iget-boolean v1, v0, Lio/realm/v;->b:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    if-nez p1, :cond_1

    iget-object p1, p0, Lio/realm/Y;->q:Lio/realm/v;

    iget-object p1, p1, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v0, p0, Lio/realm/Y;->b:Lio/realm/X;

    iget-wide v0, v0, Lio/realm/X;->i:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/A;->v(J)V

    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/Y;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/Y;->b:Lio/realm/X;

    iget-wide v1, v1, Lio/realm/X;->i:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/A;->b(JLjava/lang/String;)V

    return-void
.end method

.method public final realmSet$plot(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lio/realm/Y;->q:Lio/realm/v;

    iget-boolean v1, v0, Lio/realm/v;->b:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    if-nez p1, :cond_1

    iget-object p1, p0, Lio/realm/Y;->q:Lio/realm/v;

    iget-object p1, p1, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v0, p0, Lio/realm/Y;->b:Lio/realm/X;

    iget-wide v0, v0, Lio/realm/X;->l:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/A;->v(J)V

    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/Y;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/Y;->b:Lio/realm/X;

    iget-wide v1, v1, Lio/realm/X;->l:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/A;->b(JLjava/lang/String;)V

    return-void
.end method

.method public final realmSet$rating(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lio/realm/Y;->q:Lio/realm/v;

    iget-boolean v1, v0, Lio/realm/v;->b:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    if-nez p1, :cond_1

    iget-object p1, p0, Lio/realm/Y;->q:Lio/realm/v;

    iget-object p1, p1, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v0, p0, Lio/realm/Y;->b:Lio/realm/X;

    iget-wide v0, v0, Lio/realm/X;->j:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/A;->v(J)V

    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/Y;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/Y;->b:Lio/realm/X;

    iget-wide v1, v1, Lio/realm/X;->j:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/A;->b(JLjava/lang/String;)V

    return-void
.end method

.method public final realmSet$releasedate(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lio/realm/Y;->q:Lio/realm/v;

    iget-boolean v1, v0, Lio/realm/v;->b:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    if-nez p1, :cond_1

    iget-object p1, p0, Lio/realm/Y;->q:Lio/realm/v;

    iget-object p1, p1, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v0, p0, Lio/realm/Y;->b:Lio/realm/X;

    iget-wide v0, v0, Lio/realm/X;->k:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/A;->v(J)V

    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/Y;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/Y;->b:Lio/realm/X;

    iget-wide v1, v1, Lio/realm/X;->k:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/A;->b(JLjava/lang/String;)V

    return-void
.end method

.method public final realmSet$tmdb_id(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lio/realm/Y;->q:Lio/realm/v;

    iget-boolean v1, v0, Lio/realm/v;->b:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    if-nez p1, :cond_1

    iget-object p1, p0, Lio/realm/Y;->q:Lio/realm/v;

    iget-object p1, p1, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v0, p0, Lio/realm/Y;->b:Lio/realm/X;

    iget-wide v0, v0, Lio/realm/X;->e:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/A;->v(J)V

    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/Y;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/Y;->b:Lio/realm/X;

    iget-wide v1, v1, Lio/realm/X;->e:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/A;->b(JLjava/lang/String;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lio/realm/O;->isValid(Lio/realm/M;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Invalid object"

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EpisodeInfoModel = proxy[{tmdb_id:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/realm/Y;->realmGet$tmdb_id()Ljava/lang/String;

    move-result-object v1

    const-string v2, "null"

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lio/realm/Y;->realmGet$tmdb_id()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "},{bitrate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/Y;->realmGet$bitrate()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "},{duration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/Y;->realmGet$duration()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lio/realm/Y;->realmGet$duration()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "},{duration_secs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/Y;->realmGet$duration_secs()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "},{name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/Y;->realmGet$name()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lio/realm/Y;->realmGet$name()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    move-object v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "},{rating:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/Y;->realmGet$rating()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lio/realm/Y;->realmGet$rating()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_4
    move-object v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "},{releasedate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/Y;->realmGet$releasedate()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lio/realm/Y;->realmGet$releasedate()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_5
    move-object v1, v2

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "},{plot:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/Y;->realmGet$plot()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lio/realm/Y;->realmGet$plot()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_6
    move-object v1, v2

    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "},{movie_image:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/Y;->realmGet$movie_image()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lio/realm/Y;->realmGet$movie_image()Ljava/lang/String;

    move-result-object v2

    :cond_7
    const-string v1, "}]"

    invoke-static {v0, v2, v1}, LB/f;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
