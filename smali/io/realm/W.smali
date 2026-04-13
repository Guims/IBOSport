.class public final Lio/realm/W;
.super Lib/player/models/EPGChannel;

# interfaces
.implements Lio/realm/internal/y;


# static fields
.field public static final r:Lio/realm/internal/OsObjectSchemaInfo;


# instance fields
.field public b:Lio/realm/V;

.field public q:Lio/realm/v;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, LS2/f;

    const-string v1, "EPGChannel"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, LS2/f;-><init>(Ljava/lang/String;I)V

    sget-object v1, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const-string v2, "selected"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, LS2/f;->a(Ljava/lang/String;Lio/realm/RealmFieldType;Z)V

    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v4, "num"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v2, v5}, LS2/f;->a(Ljava/lang/String;Lio/realm/RealmFieldType;Z)V

    const-string v4, "name"

    invoke-virtual {v0, v4, v2, v5}, LS2/f;->a(Ljava/lang/String;Lio/realm/RealmFieldType;Z)V

    const-string v4, "stream_type"

    invoke-virtual {v0, v4, v2, v5}, LS2/f;->a(Ljava/lang/String;Lio/realm/RealmFieldType;Z)V

    const-string v4, "stream_id"

    invoke-virtual {v0, v4, v2, v5}, LS2/f;->a(Ljava/lang/String;Lio/realm/RealmFieldType;Z)V

    const-string v4, "stream_icon"

    invoke-virtual {v0, v4, v2, v5}, LS2/f;->a(Ljava/lang/String;Lio/realm/RealmFieldType;Z)V

    const-string v4, "Id"

    invoke-virtual {v0, v4, v2, v5}, LS2/f;->a(Ljava/lang/String;Lio/realm/RealmFieldType;Z)V

    const-string v4, "added"

    invoke-virtual {v0, v4, v2, v5}, LS2/f;->a(Ljava/lang/String;Lio/realm/RealmFieldType;Z)V

    const-string v4, "category_id"

    invoke-virtual {v0, v4, v2, v5}, LS2/f;->a(Ljava/lang/String;Lio/realm/RealmFieldType;Z)V

    const-string v4, "custom_sid"

    invoke-virtual {v0, v4, v2, v5}, LS2/f;->a(Ljava/lang/String;Lio/realm/RealmFieldType;Z)V

    const-string v4, "tv_archive"

    invoke-virtual {v0, v4, v2, v5}, LS2/f;->a(Ljava/lang/String;Lio/realm/RealmFieldType;Z)V

    const-string v4, "direct_source"

    invoke-virtual {v0, v4, v2, v5}, LS2/f;->a(Ljava/lang/String;Lio/realm/RealmFieldType;Z)V

    const-string v4, "tv_archive_duration"

    invoke-virtual {v0, v4, v2, v5}, LS2/f;->a(Ljava/lang/String;Lio/realm/RealmFieldType;Z)V

    const-string v4, "url"

    invoke-virtual {v0, v4, v2, v5}, LS2/f;->a(Ljava/lang/String;Lio/realm/RealmFieldType;Z)V

    const-string v4, "category_name"

    invoke-virtual {v0, v4, v2, v5}, LS2/f;->a(Ljava/lang/String;Lio/realm/RealmFieldType;Z)V

    const-string v2, "is_locked"

    invoke-virtual {v0, v2, v1, v3}, LS2/f;->a(Ljava/lang/String;Lio/realm/RealmFieldType;Z)V

    const-string v2, "is_favorite"

    invoke-virtual {v0, v2, v1, v3}, LS2/f;->a(Ljava/lang/String;Lio/realm/RealmFieldType;Z)V

    const-string v2, "is_recent"

    invoke-virtual {v0, v2, v1, v3}, LS2/f;->a(Ljava/lang/String;Lio/realm/RealmFieldType;Z)V

    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string v2, "recent_pos"

    invoke-virtual {v0, v2, v1, v3}, LS2/f;->a(Ljava/lang/String;Lio/realm/RealmFieldType;Z)V

    const-string v2, "cell"

    invoke-virtual {v0, v2, v1, v3}, LS2/f;->a(Ljava/lang/String;Lio/realm/RealmFieldType;Z)V

    const-string v2, "channelID"

    invoke-virtual {v0, v2, v1, v3}, LS2/f;->a(Ljava/lang/String;Lio/realm/RealmFieldType;Z)V

    invoke-virtual {v0}, LS2/f;->b()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    sput-object v0, Lio/realm/W;->r:Lio/realm/internal/OsObjectSchemaInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lib/player/models/EPGChannel;-><init>()V

    iget-object v0, p0, Lio/realm/W;->q:Lio/realm/v;

    invoke-virtual {v0}, Lio/realm/v;->a()V

    return-void
.end method

.method public static c(Lio/realm/y;Ljava/util/Iterator;Ljava/util/HashMap;)V
    .locals 12

    iget-object v0, p0, Lio/realm/y;->z:Lio/realm/k;

    const-class v1, Lib/player/models/EPGChannel;

    invoke-virtual {v0, v1}, Lio/realm/k;->b(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v2

    iget-wide v3, v2, Lio/realm/internal/Table;->b:J

    invoke-virtual {v0, v1}, Lio/realm/k;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object v0

    check-cast v0, Lio/realm/V;

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lib/player/models/EPGChannel;

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

    iget-wide v5, v0, Lio/realm/V;->e:J

    invoke-virtual {v1}, Lib/player/models/EPGChannel;->realmGet$selected()Z

    move-result v9

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    invoke-virtual {v1}, Lib/player/models/EPGChannel;->realmGet$num()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    iget-wide v5, v0, Lio/realm/V;->f:J

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_1

    :cond_2
    iget-wide v5, v0, Lio/realm/V;->f:J

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_1
    invoke-virtual {v1}, Lib/player/models/EPGChannel;->realmGet$name()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    iget-wide v5, v0, Lio/realm/V;->g:J

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_2

    :cond_3
    iget-wide v5, v0, Lio/realm/V;->g:J

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_2
    invoke-virtual {v1}, Lib/player/models/EPGChannel;->realmGet$stream_type()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    iget-wide v5, v0, Lio/realm/V;->h:J

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_3

    :cond_4
    iget-wide v5, v0, Lio/realm/V;->h:J

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_3
    invoke-virtual {v1}, Lib/player/models/EPGChannel;->realmGet$stream_id()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    iget-wide v5, v0, Lio/realm/V;->i:J

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_4

    :cond_5
    iget-wide v5, v0, Lio/realm/V;->i:J

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_4
    invoke-virtual {v1}, Lib/player/models/EPGChannel;->realmGet$stream_icon()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6

    iget-wide v5, v0, Lio/realm/V;->j:J

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_5

    :cond_6
    iget-wide v5, v0, Lio/realm/V;->j:J

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_5
    invoke-virtual {v1}, Lib/player/models/EPGChannel;->realmGet$Id()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_7

    iget-wide v5, v0, Lio/realm/V;->k:J

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_6

    :cond_7
    iget-wide v5, v0, Lio/realm/V;->k:J

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_6
    invoke-virtual {v1}, Lib/player/models/EPGChannel;->realmGet$added()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_8

    iget-wide v5, v0, Lio/realm/V;->l:J

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_7

    :cond_8
    iget-wide v5, v0, Lio/realm/V;->l:J

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_7
    invoke-virtual {v1}, Lib/player/models/EPGChannel;->realmGet$category_id()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_9

    iget-wide v5, v0, Lio/realm/V;->m:J

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_8

    :cond_9
    iget-wide v5, v0, Lio/realm/V;->m:J

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_8
    invoke-virtual {v1}, Lib/player/models/EPGChannel;->realmGet$custom_sid()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_a

    iget-wide v5, v0, Lio/realm/V;->n:J

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_9

    :cond_a
    iget-wide v5, v0, Lio/realm/V;->n:J

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_9
    invoke-virtual {v1}, Lib/player/models/EPGChannel;->realmGet$tv_archive()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_b

    iget-wide v5, v0, Lio/realm/V;->o:J

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_a

    :cond_b
    iget-wide v5, v0, Lio/realm/V;->o:J

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_a
    invoke-virtual {v1}, Lib/player/models/EPGChannel;->realmGet$direct_source()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_c

    iget-wide v5, v0, Lio/realm/V;->p:J

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_b

    :cond_c
    iget-wide v5, v0, Lio/realm/V;->p:J

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_b
    invoke-virtual {v1}, Lib/player/models/EPGChannel;->realmGet$tv_archive_duration()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_d

    iget-wide v5, v0, Lio/realm/V;->q:J

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_c

    :cond_d
    iget-wide v5, v0, Lio/realm/V;->q:J

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_c
    invoke-virtual {v1}, Lib/player/models/EPGChannel;->realmGet$url()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_e

    iget-wide v5, v0, Lio/realm/V;->r:J

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_d

    :cond_e
    iget-wide v5, v0, Lio/realm/V;->r:J

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_d
    invoke-virtual {v1}, Lib/player/models/EPGChannel;->realmGet$category_name()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_f

    iget-wide v5, v0, Lio/realm/V;->s:J

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_e

    :cond_f
    iget-wide v5, v0, Lio/realm/V;->s:J

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_e
    iget-wide v5, v0, Lio/realm/V;->t:J

    invoke-virtual {v1}, Lib/player/models/EPGChannel;->realmGet$is_locked()Z

    move-result v9

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    iget-wide v5, v0, Lio/realm/V;->u:J

    invoke-virtual {v1}, Lib/player/models/EPGChannel;->realmGet$is_favorite()Z

    move-result v9

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    iget-wide v5, v0, Lio/realm/V;->v:J

    invoke-virtual {v1}, Lib/player/models/EPGChannel;->realmGet$is_recent()Z

    move-result v9

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    iget-wide v5, v0, Lio/realm/V;->w:J

    invoke-virtual {v1}, Lib/player/models/EPGChannel;->realmGet$recent_pos()J

    move-result-wide v9

    const/4 v11, 0x0

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    iget-wide v5, v0, Lio/realm/V;->x:J

    invoke-virtual {v1}, Lib/player/models/EPGChannel;->realmGet$cell()I

    move-result v9

    int-to-long v9, v9

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    iget-wide v5, v0, Lio/realm/V;->y:J

    invoke-virtual {v1}, Lib/player/models/EPGChannel;->realmGet$channelID()I

    move-result v1

    int-to-long v9, v1

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    goto/16 :goto_0

    :cond_10
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lio/realm/W;->q:Lio/realm/v;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lio/realm/d;->y:LB5/c;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/c;

    iget-object v1, v0, Lio/realm/c;->c:Lio/realm/internal/c;

    check-cast v1, Lio/realm/V;

    iput-object v1, p0, Lio/realm/W;->b:Lio/realm/V;

    new-instance v1, Lio/realm/v;

    invoke-direct {v1, p0}, Lio/realm/v;-><init>(Lio/realm/O;)V

    iput-object v1, p0, Lio/realm/W;->q:Lio/realm/v;

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

    iget-object v0, p0, Lio/realm/W;->q:Lio/realm/v;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    if-ne p0, p1, :cond_0

    goto/16 :goto_0

    :cond_0
    if-eqz p1, :cond_9

    const-class v0, Lio/realm/W;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto/16 :goto_1

    :cond_1
    check-cast p1, Lio/realm/W;

    iget-object v0, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    iget-object v1, p1, Lio/realm/W;->q:Lio/realm/v;

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
    iget-object v0, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v0}, Lio/realm/internal/A;->d()Lio/realm/internal/Table;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/internal/Table;->k()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lio/realm/W;->q:Lio/realm/v;

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
    iget-object v0, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v0}, Lio/realm/internal/A;->F()J

    move-result-wide v0

    iget-object p1, p1, Lio/realm/W;->q:Lio/realm/v;

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

    iget-object v0, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-object v1, v0, Lio/realm/v;->e:Lio/realm/d;

    iget-object v1, v1, Lio/realm/d;->r:Lio/realm/J;

    iget-object v1, v1, Lio/realm/J;->c:Ljava/lang/String;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v0}, Lio/realm/internal/A;->d()Lio/realm/internal/Table;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/internal/Table;->k()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lio/realm/W;->q:Lio/realm/v;

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

.method public final realmGet$Id()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v0, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/W;->b:Lio/realm/V;

    iget-wide v1, v1, Lio/realm/V;->k:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/A;->A(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final realmGet$added()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v0, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/W;->b:Lio/realm/V;

    iget-wide v1, v1, Lio/realm/V;->l:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/A;->A(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final realmGet$category_id()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v0, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/W;->b:Lio/realm/V;

    iget-wide v1, v1, Lio/realm/V;->m:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/A;->A(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final realmGet$category_name()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v0, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/W;->b:Lio/realm/V;

    iget-wide v1, v1, Lio/realm/V;->s:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/A;->A(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final realmGet$cell()I
    .locals 3

    iget-object v0, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v0, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/W;->b:Lio/realm/V;

    iget-wide v1, v1, Lio/realm/V;->x:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/A;->j(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public final realmGet$channelID()I
    .locals 3

    iget-object v0, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v0, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/W;->b:Lio/realm/V;

    iget-wide v1, v1, Lio/realm/V;->y:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/A;->j(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public final realmGet$custom_sid()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v0, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/W;->b:Lio/realm/V;

    iget-wide v1, v1, Lio/realm/V;->n:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/A;->A(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final realmGet$direct_source()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v0, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/W;->b:Lio/realm/V;

    iget-wide v1, v1, Lio/realm/V;->p:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/A;->A(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final realmGet$is_favorite()Z
    .locals 3

    iget-object v0, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v0, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/W;->b:Lio/realm/V;

    iget-wide v1, v1, Lio/realm/V;->u:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/A;->i(J)Z

    move-result v0

    return v0
.end method

.method public final realmGet$is_locked()Z
    .locals 3

    iget-object v0, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v0, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/W;->b:Lio/realm/V;

    iget-wide v1, v1, Lio/realm/V;->t:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/A;->i(J)Z

    move-result v0

    return v0
.end method

.method public final realmGet$is_recent()Z
    .locals 3

    iget-object v0, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v0, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/W;->b:Lio/realm/V;

    iget-wide v1, v1, Lio/realm/V;->v:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/A;->i(J)Z

    move-result v0

    return v0
.end method

.method public final realmGet$name()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v0, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/W;->b:Lio/realm/V;

    iget-wide v1, v1, Lio/realm/V;->g:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/A;->A(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final realmGet$num()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v0, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/W;->b:Lio/realm/V;

    iget-wide v1, v1, Lio/realm/V;->f:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/A;->A(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final realmGet$recent_pos()J
    .locals 3

    iget-object v0, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v0, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/W;->b:Lio/realm/V;

    iget-wide v1, v1, Lio/realm/V;->w:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/A;->j(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final realmGet$selected()Z
    .locals 3

    iget-object v0, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v0, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/W;->b:Lio/realm/V;

    iget-wide v1, v1, Lio/realm/V;->e:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/A;->i(J)Z

    move-result v0

    return v0
.end method

.method public final realmGet$stream_icon()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v0, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/W;->b:Lio/realm/V;

    iget-wide v1, v1, Lio/realm/V;->j:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/A;->A(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final realmGet$stream_id()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v0, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/W;->b:Lio/realm/V;

    iget-wide v1, v1, Lio/realm/V;->i:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/A;->A(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final realmGet$stream_type()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v0, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/W;->b:Lio/realm/V;

    iget-wide v1, v1, Lio/realm/V;->h:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/A;->A(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final realmGet$tv_archive()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v0, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/W;->b:Lio/realm/V;

    iget-wide v1, v1, Lio/realm/V;->o:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/A;->A(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final realmGet$tv_archive_duration()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v0, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/W;->b:Lio/realm/V;

    iget-wide v1, v1, Lio/realm/V;->q:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/A;->A(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final realmGet$url()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v0, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/W;->b:Lio/realm/V;

    iget-wide v1, v1, Lio/realm/V;->r:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/A;->A(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final realmSet$Id(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-boolean v1, v0, Lio/realm/v;->b:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    if-nez p1, :cond_1

    iget-object p1, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-object p1, p1, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v0, p0, Lio/realm/W;->b:Lio/realm/V;

    iget-wide v0, v0, Lio/realm/V;->k:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/A;->v(J)V

    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/W;->b:Lio/realm/V;

    iget-wide v1, v1, Lio/realm/V;->k:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/A;->b(JLjava/lang/String;)V

    return-void
.end method

.method public final realmSet$added(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-boolean v1, v0, Lio/realm/v;->b:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    if-nez p1, :cond_1

    iget-object p1, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-object p1, p1, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v0, p0, Lio/realm/W;->b:Lio/realm/V;

    iget-wide v0, v0, Lio/realm/V;->l:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/A;->v(J)V

    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/W;->b:Lio/realm/V;

    iget-wide v1, v1, Lio/realm/V;->l:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/A;->b(JLjava/lang/String;)V

    return-void
.end method

.method public final realmSet$category_id(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-boolean v1, v0, Lio/realm/v;->b:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    if-nez p1, :cond_1

    iget-object p1, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-object p1, p1, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v0, p0, Lio/realm/W;->b:Lio/realm/V;

    iget-wide v0, v0, Lio/realm/V;->m:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/A;->v(J)V

    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/W;->b:Lio/realm/V;

    iget-wide v1, v1, Lio/realm/V;->m:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/A;->b(JLjava/lang/String;)V

    return-void
.end method

.method public final realmSet$category_name(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-boolean v1, v0, Lio/realm/v;->b:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    if-nez p1, :cond_1

    iget-object p1, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-object p1, p1, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v0, p0, Lio/realm/W;->b:Lio/realm/V;

    iget-wide v0, v0, Lio/realm/V;->s:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/A;->v(J)V

    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/W;->b:Lio/realm/V;

    iget-wide v1, v1, Lio/realm/V;->s:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/A;->b(JLjava/lang/String;)V

    return-void
.end method

.method public final realmSet$cell(I)V
    .locals 5

    iget-object v0, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-boolean v1, v0, Lio/realm/v;->b:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v0, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/W;->b:Lio/realm/V;

    iget-wide v1, v1, Lio/realm/V;->x:J

    int-to-long v3, p1

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/A;->m(JJ)V

    return-void
.end method

.method public final realmSet$channelID(I)V
    .locals 5

    iget-object v0, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-boolean v1, v0, Lio/realm/v;->b:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v0, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/W;->b:Lio/realm/V;

    iget-wide v1, v1, Lio/realm/V;->y:J

    int-to-long v3, p1

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/A;->m(JJ)V

    return-void
.end method

.method public final realmSet$custom_sid(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-boolean v1, v0, Lio/realm/v;->b:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    if-nez p1, :cond_1

    iget-object p1, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-object p1, p1, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v0, p0, Lio/realm/W;->b:Lio/realm/V;

    iget-wide v0, v0, Lio/realm/V;->n:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/A;->v(J)V

    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/W;->b:Lio/realm/V;

    iget-wide v1, v1, Lio/realm/V;->n:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/A;->b(JLjava/lang/String;)V

    return-void
.end method

.method public final realmSet$direct_source(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-boolean v1, v0, Lio/realm/v;->b:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    if-nez p1, :cond_1

    iget-object p1, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-object p1, p1, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v0, p0, Lio/realm/W;->b:Lio/realm/V;

    iget-wide v0, v0, Lio/realm/V;->p:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/A;->v(J)V

    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/W;->b:Lio/realm/V;

    iget-wide v1, v1, Lio/realm/V;->p:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/A;->b(JLjava/lang/String;)V

    return-void
.end method

.method public final realmSet$is_favorite(Z)V
    .locals 3

    iget-object v0, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-boolean v1, v0, Lio/realm/v;->b:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v0, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/W;->b:Lio/realm/V;

    iget-wide v1, v1, Lio/realm/V;->u:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/A;->e(JZ)V

    return-void
.end method

.method public final realmSet$is_locked(Z)V
    .locals 3

    iget-object v0, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-boolean v1, v0, Lio/realm/v;->b:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v0, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/W;->b:Lio/realm/V;

    iget-wide v1, v1, Lio/realm/V;->t:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/A;->e(JZ)V

    return-void
.end method

.method public final realmSet$is_recent(Z)V
    .locals 3

    iget-object v0, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-boolean v1, v0, Lio/realm/v;->b:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v0, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/W;->b:Lio/realm/V;

    iget-wide v1, v1, Lio/realm/V;->v:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/A;->e(JZ)V

    return-void
.end method

.method public final realmSet$name(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-boolean v1, v0, Lio/realm/v;->b:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    if-nez p1, :cond_1

    iget-object p1, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-object p1, p1, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v0, p0, Lio/realm/W;->b:Lio/realm/V;

    iget-wide v0, v0, Lio/realm/V;->g:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/A;->v(J)V

    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/W;->b:Lio/realm/V;

    iget-wide v1, v1, Lio/realm/V;->g:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/A;->b(JLjava/lang/String;)V

    return-void
.end method

.method public final realmSet$num(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-boolean v1, v0, Lio/realm/v;->b:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    if-nez p1, :cond_1

    iget-object p1, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-object p1, p1, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v0, p0, Lio/realm/W;->b:Lio/realm/V;

    iget-wide v0, v0, Lio/realm/V;->f:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/A;->v(J)V

    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/W;->b:Lio/realm/V;

    iget-wide v1, v1, Lio/realm/V;->f:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/A;->b(JLjava/lang/String;)V

    return-void
.end method

.method public final realmSet$recent_pos(J)V
    .locals 3

    iget-object v0, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-boolean v1, v0, Lio/realm/v;->b:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v0, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/W;->b:Lio/realm/V;

    iget-wide v1, v1, Lio/realm/V;->w:J

    invoke-interface {v0, v1, v2, p1, p2}, Lio/realm/internal/A;->m(JJ)V

    return-void
.end method

.method public final realmSet$selected(Z)V
    .locals 3

    iget-object v0, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-boolean v1, v0, Lio/realm/v;->b:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v0, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/W;->b:Lio/realm/V;

    iget-wide v1, v1, Lio/realm/V;->e:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/A;->e(JZ)V

    return-void
.end method

.method public final realmSet$stream_icon(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-boolean v1, v0, Lio/realm/v;->b:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    if-nez p1, :cond_1

    iget-object p1, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-object p1, p1, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v0, p0, Lio/realm/W;->b:Lio/realm/V;

    iget-wide v0, v0, Lio/realm/V;->j:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/A;->v(J)V

    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/W;->b:Lio/realm/V;

    iget-wide v1, v1, Lio/realm/V;->j:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/A;->b(JLjava/lang/String;)V

    return-void
.end method

.method public final realmSet$stream_id(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-boolean v1, v0, Lio/realm/v;->b:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    if-nez p1, :cond_1

    iget-object p1, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-object p1, p1, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v0, p0, Lio/realm/W;->b:Lio/realm/V;

    iget-wide v0, v0, Lio/realm/V;->i:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/A;->v(J)V

    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/W;->b:Lio/realm/V;

    iget-wide v1, v1, Lio/realm/V;->i:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/A;->b(JLjava/lang/String;)V

    return-void
.end method

.method public final realmSet$stream_type(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-boolean v1, v0, Lio/realm/v;->b:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    if-nez p1, :cond_1

    iget-object p1, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-object p1, p1, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v0, p0, Lio/realm/W;->b:Lio/realm/V;

    iget-wide v0, v0, Lio/realm/V;->h:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/A;->v(J)V

    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/W;->b:Lio/realm/V;

    iget-wide v1, v1, Lio/realm/V;->h:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/A;->b(JLjava/lang/String;)V

    return-void
.end method

.method public final realmSet$tv_archive(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-boolean v1, v0, Lio/realm/v;->b:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    if-nez p1, :cond_1

    iget-object p1, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-object p1, p1, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v0, p0, Lio/realm/W;->b:Lio/realm/V;

    iget-wide v0, v0, Lio/realm/V;->o:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/A;->v(J)V

    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/W;->b:Lio/realm/V;

    iget-wide v1, v1, Lio/realm/V;->o:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/A;->b(JLjava/lang/String;)V

    return-void
.end method

.method public final realmSet$tv_archive_duration(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-boolean v1, v0, Lio/realm/v;->b:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    if-nez p1, :cond_1

    iget-object p1, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-object p1, p1, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v0, p0, Lio/realm/W;->b:Lio/realm/V;

    iget-wide v0, v0, Lio/realm/V;->q:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/A;->v(J)V

    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/W;->b:Lio/realm/V;

    iget-wide v1, v1, Lio/realm/V;->q:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/A;->b(JLjava/lang/String;)V

    return-void
.end method

.method public final realmSet$url(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-boolean v1, v0, Lio/realm/v;->b:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    if-nez p1, :cond_1

    iget-object p1, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-object p1, p1, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v0, p0, Lio/realm/W;->b:Lio/realm/V;

    iget-wide v0, v0, Lio/realm/V;->r:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/A;->v(J)V

    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/W;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/W;->b:Lio/realm/V;

    iget-wide v1, v1, Lio/realm/V;->r:J

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

    const-string v1, "EPGChannel = proxy[{selected:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/realm/W;->realmGet$selected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "},{num:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/W;->realmGet$num()Ljava/lang/String;

    move-result-object v1

    const-string v2, "null"

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lio/realm/W;->realmGet$num()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "},{name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/W;->realmGet$name()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lio/realm/W;->realmGet$name()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "},{stream_type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/W;->realmGet$stream_type()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lio/realm/W;->realmGet$stream_type()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    move-object v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "},{stream_id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/W;->realmGet$stream_id()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lio/realm/W;->realmGet$stream_id()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_4
    move-object v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "},{stream_icon:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/W;->realmGet$stream_icon()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lio/realm/W;->realmGet$stream_icon()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_5
    move-object v1, v2

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "},{Id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/W;->realmGet$Id()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lio/realm/W;->realmGet$Id()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_6
    move-object v1, v2

    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "},{added:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/W;->realmGet$added()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lio/realm/W;->realmGet$added()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_7
    move-object v1, v2

    :goto_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "},{category_id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/W;->realmGet$category_id()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lio/realm/W;->realmGet$category_id()Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_8
    move-object v1, v2

    :goto_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "},{custom_sid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/W;->realmGet$custom_sid()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lio/realm/W;->realmGet$custom_sid()Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    :cond_9
    move-object v1, v2

    :goto_8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "},{tv_archive:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/W;->realmGet$tv_archive()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lio/realm/W;->realmGet$tv_archive()Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    :cond_a
    move-object v1, v2

    :goto_9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "},{direct_source:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/W;->realmGet$direct_source()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {p0}, Lio/realm/W;->realmGet$direct_source()Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    :cond_b
    move-object v1, v2

    :goto_a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "},{tv_archive_duration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/W;->realmGet$tv_archive_duration()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {p0}, Lio/realm/W;->realmGet$tv_archive_duration()Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    :cond_c
    move-object v1, v2

    :goto_b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "},{url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/W;->realmGet$url()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Lio/realm/W;->realmGet$url()Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    :cond_d
    move-object v1, v2

    :goto_c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "},{category_name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/W;->realmGet$category_name()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {p0}, Lio/realm/W;->realmGet$category_name()Ljava/lang/String;

    move-result-object v2

    :cond_e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "},{is_locked:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/W;->realmGet$is_locked()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "},{is_favorite:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/W;->realmGet$is_favorite()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "},{is_recent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/W;->realmGet$is_recent()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "},{recent_pos:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/W;->realmGet$recent_pos()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "},{cell:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/W;->realmGet$cell()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "},{channelID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/W;->realmGet$channelID()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
