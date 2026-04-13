.class Lio/realm/DefaultRealmModuleMediator;
.super Lio/realm/internal/z;


# annotations
.annotation runtime Lio/realm/annotations/RealmModule;
.end annotation


# static fields
.field public static final a:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    const-class v1, Lib/player/models/SeriesModel;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-class v1, Lib/player/models/MovieModel;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-class v1, Lib/player/models/EpisodeModel;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-class v1, Lib/player/models/EpisodeInfoModel;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-class v1, Lib/player/models/EPGChannel;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lio/realm/DefaultRealmModuleMediator;->a:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/realm/y;Lio/realm/M;Ljava/util/HashMap;Ljava/util/Set;)Lio/realm/M;
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    iget-object v4, v0, Lio/realm/d;->r:Lio/realm/J;

    iget-wide v5, v0, Lio/realm/d;->q:J

    iget-object v7, v0, Lio/realm/y;->z:Lio/realm/k;

    instance-of v8, v1, Lio/realm/internal/y;

    if-eqz v8, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v8

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    :goto_0
    const-class v9, Lib/player/models/SeriesModel;

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    const-string v11, "Objects which belong to Realm instances in other threads cannot be copied into this Realm instance."

    if-eqz v10, :cond_5

    invoke-virtual {v7, v9}, Lio/realm/k;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object v10

    check-cast v10, Lio/realm/d0;

    check-cast v1, Lib/player/models/SeriesModel;

    sget-object v12, Lio/realm/e0;->r:Lio/realm/internal/OsObjectSchemaInfo;

    instance-of v12, v1, Lio/realm/internal/y;

    if-eqz v12, :cond_2

    invoke-static {v1}, Lio/realm/O;->isFrozen(Lio/realm/M;)Z

    move-result v12

    if-nez v12, :cond_2

    move-object v12, v1

    check-cast v12, Lio/realm/internal/y;

    invoke-interface {v12}, Lio/realm/internal/y;->b()Lio/realm/v;

    move-result-object v13

    iget-object v13, v13, Lio/realm/v;->e:Lio/realm/d;

    if-eqz v13, :cond_2

    invoke-interface {v12}, Lio/realm/internal/y;->b()Lio/realm/v;

    move-result-object v12

    iget-object v12, v12, Lio/realm/v;->e:Lio/realm/d;

    iget-wide v13, v12, Lio/realm/d;->q:J

    cmp-long v5, v13, v5

    if-nez v5, :cond_1

    iget-object v5, v12, Lio/realm/d;->r:Lio/realm/J;

    iget-object v5, v5, Lio/realm/J;->c:Ljava/lang/String;

    iget-object v4, v4, Lio/realm/J;->c:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    sget-object v4, Lio/realm/d;->y:LB5/c;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/realm/c;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/realm/internal/y;

    if-eqz v5, :cond_3

    move-object v1, v5

    check-cast v1, Lib/player/models/SeriesModel;

    goto/16 :goto_1

    :cond_3
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/realm/internal/y;

    if-eqz v5, :cond_4

    move-object v1, v5

    check-cast v1, Lib/player/models/SeriesModel;

    goto/16 :goto_1

    :cond_4
    invoke-virtual {v7, v9}, Lio/realm/k;->b(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v5

    new-instance v6, Lio/realm/internal/objectstore/OsObjectBuilder;

    invoke-direct {v6, v5, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;Ljava/util/Set;)V

    iget-wide v11, v10, Lio/realm/d0;->e:J

    invoke-virtual {v1}, Lib/player/models/SeriesModel;->realmGet$tmdb()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v11, v12, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->r(JLjava/lang/String;)V

    iget-wide v11, v10, Lio/realm/d0;->f:J

    invoke-virtual {v1}, Lib/player/models/SeriesModel;->realmGet$num()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v11, v12, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/Integer;)V

    iget-wide v11, v10, Lio/realm/d0;->g:J

    invoke-virtual {v1}, Lib/player/models/SeriesModel;->realmGet$name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v11, v12, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->r(JLjava/lang/String;)V

    iget-wide v11, v10, Lio/realm/d0;->h:J

    invoke-virtual {v1}, Lib/player/models/SeriesModel;->realmGet$stream_type()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v11, v12, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->r(JLjava/lang/String;)V

    iget-wide v11, v10, Lio/realm/d0;->i:J

    invoke-virtual {v1}, Lib/player/models/SeriesModel;->realmGet$series_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v11, v12, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->r(JLjava/lang/String;)V

    iget-wide v11, v10, Lio/realm/d0;->j:J

    invoke-virtual {v1}, Lib/player/models/SeriesModel;->realmGet$stream_icon()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v11, v12, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->r(JLjava/lang/String;)V

    iget-wide v11, v10, Lio/realm/d0;->k:J

    invoke-virtual {v1}, Lib/player/models/SeriesModel;->realmGet$youtube()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v11, v12, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->r(JLjava/lang/String;)V

    iget-wide v11, v10, Lio/realm/d0;->l:J

    invoke-virtual {v1}, Lib/player/models/SeriesModel;->realmGet$plot()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v11, v12, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->r(JLjava/lang/String;)V

    iget-wide v11, v10, Lio/realm/d0;->m:J

    invoke-virtual {v1}, Lib/player/models/SeriesModel;->realmGet$cast()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v11, v12, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->r(JLjava/lang/String;)V

    iget-wide v11, v10, Lio/realm/d0;->n:J

    invoke-virtual {v1}, Lib/player/models/SeriesModel;->realmGet$director()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v11, v12, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->r(JLjava/lang/String;)V

    iget-wide v11, v10, Lio/realm/d0;->o:J

    invoke-virtual {v1}, Lib/player/models/SeriesModel;->realmGet$genre()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v11, v12, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->r(JLjava/lang/String;)V

    iget-wide v11, v10, Lio/realm/d0;->p:J

    invoke-virtual {v1}, Lib/player/models/SeriesModel;->realmGet$releaseDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v11, v12, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->r(JLjava/lang/String;)V

    iget-wide v11, v10, Lio/realm/d0;->q:J

    invoke-virtual {v1}, Lib/player/models/SeriesModel;->realmGet$rating()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v11, v12, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->r(JLjava/lang/String;)V

    iget-wide v11, v10, Lio/realm/d0;->r:J

    invoke-virtual {v1}, Lib/player/models/SeriesModel;->realmGet$rating_5based()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v6, v11, v12, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->b(JLjava/lang/Float;)V

    iget-wide v11, v10, Lio/realm/d0;->s:J

    invoke-virtual {v1}, Lib/player/models/SeriesModel;->realmGet$category_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v11, v12, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->r(JLjava/lang/String;)V

    iget-wide v11, v10, Lio/realm/d0;->t:J

    invoke-virtual {v1}, Lib/player/models/SeriesModel;->realmGet$age()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v11, v12, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->r(JLjava/lang/String;)V

    iget-wide v11, v10, Lio/realm/d0;->u:J

    invoke-virtual {v1}, Lib/player/models/SeriesModel;->realmGet$last_modified()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v11, v12, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->r(JLjava/lang/String;)V

    iget-wide v11, v10, Lio/realm/d0;->v:J

    invoke-virtual {v1}, Lib/player/models/SeriesModel;->realmGet$season_pos()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v11, v12, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/Integer;)V

    iget-wide v11, v10, Lio/realm/d0;->w:J

    invoke-virtual {v1}, Lib/player/models/SeriesModel;->realmGet$episode_pos()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v11, v12, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/Integer;)V

    iget-wide v11, v10, Lio/realm/d0;->x:J

    invoke-virtual {v1}, Lib/player/models/SeriesModel;->realmGet$is_watched()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v6, v11, v12, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->a(JLjava/lang/Boolean;)V

    iget-wide v11, v10, Lio/realm/d0;->y:J

    invoke-virtual {v1}, Lib/player/models/SeriesModel;->realmGet$is_favorite()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v6, v11, v12, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->a(JLjava/lang/Boolean;)V

    iget-wide v11, v10, Lio/realm/d0;->z:J

    invoke-virtual {v1}, Lib/player/models/SeriesModel;->realmGet$is_recent()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v6, v11, v12, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->a(JLjava/lang/Boolean;)V

    iget-wide v11, v10, Lio/realm/d0;->A:J

    invoke-virtual {v1}, Lib/player/models/SeriesModel;->realmGet$category_name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v11, v12, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->r(JLjava/lang/String;)V

    iget-wide v10, v10, Lio/realm/d0;->B:J

    invoke-virtual {v1}, Lib/player/models/SeriesModel;->realmGet$url()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v10, v11, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->r(JLjava/lang/String;)V

    invoke-virtual {v6}, Lio/realm/internal/objectstore/OsObjectBuilder;->s()Lio/realm/internal/UncheckedRow;

    move-result-object v3

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/realm/c;

    invoke-virtual {v7, v9}, Lio/realm/k;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object v5

    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {v4, v0, v3, v5}, Lio/realm/c;->b(Lio/realm/d;Lio/realm/internal/A;Lio/realm/internal/c;)V

    new-instance v0, Lio/realm/e0;

    invoke-direct {v0}, Lio/realm/e0;-><init>()V

    invoke-virtual {v4}, Lio/realm/c;->a()V

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    :goto_1
    invoke-virtual {v8, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/M;

    return-object v0

    :cond_5
    const-class v9, Lib/player/models/MovieModel;

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-virtual {v7, v9}, Lio/realm/k;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object v10

    check-cast v10, Lio/realm/b0;

    check-cast v1, Lib/player/models/MovieModel;

    sget-object v12, Lio/realm/c0;->r:Lio/realm/internal/OsObjectSchemaInfo;

    instance-of v12, v1, Lio/realm/internal/y;

    if-eqz v12, :cond_7

    invoke-static {v1}, Lio/realm/O;->isFrozen(Lio/realm/M;)Z

    move-result v12

    if-nez v12, :cond_7

    move-object v12, v1

    check-cast v12, Lio/realm/internal/y;

    invoke-interface {v12}, Lio/realm/internal/y;->b()Lio/realm/v;

    move-result-object v13

    iget-object v13, v13, Lio/realm/v;->e:Lio/realm/d;

    if-eqz v13, :cond_7

    invoke-interface {v12}, Lio/realm/internal/y;->b()Lio/realm/v;

    move-result-object v12

    iget-object v12, v12, Lio/realm/v;->e:Lio/realm/d;

    iget-wide v13, v12, Lio/realm/d;->q:J

    cmp-long v5, v13, v5

    if-nez v5, :cond_6

    iget-object v5, v12, Lio/realm/d;->r:Lio/realm/J;

    iget-object v5, v5, Lio/realm/J;->c:Ljava/lang/String;

    iget-object v4, v4, Lio/realm/J;->c:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto/16 :goto_2

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    sget-object v4, Lio/realm/d;->y:LB5/c;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/realm/c;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/realm/internal/y;

    if-eqz v5, :cond_8

    move-object v1, v5

    check-cast v1, Lib/player/models/MovieModel;

    goto/16 :goto_2

    :cond_8
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/realm/internal/y;

    if-eqz v5, :cond_9

    move-object v1, v5

    check-cast v1, Lib/player/models/MovieModel;

    goto/16 :goto_2

    :cond_9
    invoke-virtual {v7, v9}, Lio/realm/k;->b(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v5

    new-instance v6, Lio/realm/internal/objectstore/OsObjectBuilder;

    invoke-direct {v6, v5, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;Ljava/util/Set;)V

    iget-wide v11, v10, Lio/realm/b0;->e:J

    invoke-virtual {v1}, Lib/player/models/MovieModel;->realmGet$num()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v11, v12, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/Integer;)V

    iget-wide v11, v10, Lio/realm/b0;->f:J

    invoke-virtual {v1}, Lib/player/models/MovieModel;->realmGet$name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v11, v12, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->r(JLjava/lang/String;)V

    iget-wide v11, v10, Lio/realm/b0;->g:J

    invoke-virtual {v1}, Lib/player/models/MovieModel;->realmGet$stream_type()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v11, v12, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->r(JLjava/lang/String;)V

    iget-wide v11, v10, Lio/realm/b0;->h:J

    invoke-virtual {v1}, Lib/player/models/MovieModel;->realmGet$stream_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v11, v12, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->r(JLjava/lang/String;)V

    iget-wide v11, v10, Lio/realm/b0;->i:J

    invoke-virtual {v1}, Lib/player/models/MovieModel;->realmGet$stream_icon()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v11, v12, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->r(JLjava/lang/String;)V

    iget-wide v11, v10, Lio/realm/b0;->j:J

    invoke-virtual {v1}, Lib/player/models/MovieModel;->realmGet$extension()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v11, v12, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->r(JLjava/lang/String;)V

    iget-wide v11, v10, Lio/realm/b0;->k:J

    invoke-virtual {v1}, Lib/player/models/MovieModel;->realmGet$type()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v11, v12, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->r(JLjava/lang/String;)V

    iget-wide v11, v10, Lio/realm/b0;->l:J

    invoke-virtual {v1}, Lib/player/models/MovieModel;->realmGet$rating()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v11, v12, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->r(JLjava/lang/String;)V

    iget-wide v11, v10, Lio/realm/b0;->m:J

    invoke-virtual {v1}, Lib/player/models/MovieModel;->realmGet$category_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v11, v12, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->r(JLjava/lang/String;)V

    iget-wide v11, v10, Lio/realm/b0;->n:J

    invoke-virtual {v1}, Lib/player/models/MovieModel;->realmGet$custom_sid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v11, v12, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->r(JLjava/lang/String;)V

    iget-wide v11, v10, Lio/realm/b0;->o:J

    invoke-virtual {v1}, Lib/player/models/MovieModel;->realmGet$added()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v11, v12, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->r(JLjava/lang/String;)V

    iget-wide v11, v10, Lio/realm/b0;->p:J

    invoke-virtual {v1}, Lib/player/models/MovieModel;->realmGet$tmdb_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v11, v12, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->r(JLjava/lang/String;)V

    iget-wide v11, v10, Lio/realm/b0;->q:J

    invoke-virtual {v1}, Lib/player/models/MovieModel;->realmGet$pro()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v11, v12, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/Integer;)V

    iget-wide v11, v10, Lio/realm/b0;->r:J

    invoke-virtual {v1}, Lib/player/models/MovieModel;->realmGet$time()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v6, v11, v12, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->h(JLjava/lang/Long;)V

    iget-wide v11, v10, Lio/realm/b0;->s:J

    invoke-virtual {v1}, Lib/player/models/MovieModel;->realmGet$recent_mil()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v6, v11, v12, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->h(JLjava/lang/Long;)V

    iget-wide v11, v10, Lio/realm/b0;->t:J

    invoke-virtual {v1}, Lib/player/models/MovieModel;->realmGet$is_locked()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v6, v11, v12, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->a(JLjava/lang/Boolean;)V

    iget-wide v11, v10, Lio/realm/b0;->u:J

    invoke-virtual {v1}, Lib/player/models/MovieModel;->realmGet$is_favorite()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v6, v11, v12, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->a(JLjava/lang/Boolean;)V

    iget-wide v11, v10, Lio/realm/b0;->v:J

    invoke-virtual {v1}, Lib/player/models/MovieModel;->realmGet$is_recent()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v6, v11, v12, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->a(JLjava/lang/Boolean;)V

    iget-wide v11, v10, Lio/realm/b0;->w:J

    invoke-virtual {v1}, Lib/player/models/MovieModel;->realmGet$category_name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v11, v12, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->r(JLjava/lang/String;)V

    iget-wide v10, v10, Lio/realm/b0;->x:J

    invoke-virtual {v1}, Lib/player/models/MovieModel;->realmGet$url()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v10, v11, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->r(JLjava/lang/String;)V

    invoke-virtual {v6}, Lio/realm/internal/objectstore/OsObjectBuilder;->s()Lio/realm/internal/UncheckedRow;

    move-result-object v3

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/realm/c;

    invoke-virtual {v7, v9}, Lio/realm/k;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object v5

    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {v4, v0, v3, v5}, Lio/realm/c;->b(Lio/realm/d;Lio/realm/internal/A;Lio/realm/internal/c;)V

    new-instance v0, Lio/realm/c0;

    invoke-direct {v0}, Lio/realm/c0;-><init>()V

    invoke-virtual {v4}, Lio/realm/c;->a()V

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    :goto_2
    invoke-virtual {v8, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/M;

    return-object v0

    :cond_a
    const-class v9, Lib/player/models/EpisodeModel;

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    const-class v12, Lib/player/models/EpisodeInfoModel;

    if-eqz v10, :cond_11

    invoke-virtual {v7, v9}, Lio/realm/k;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object v10

    check-cast v10, Lio/realm/Z;

    check-cast v1, Lib/player/models/EpisodeModel;

    sget-object v13, Lio/realm/a0;->r:Lio/realm/internal/OsObjectSchemaInfo;

    instance-of v13, v1, Lio/realm/internal/y;

    if-eqz v13, :cond_c

    invoke-static {v1}, Lio/realm/O;->isFrozen(Lio/realm/M;)Z

    move-result v13

    if-nez v13, :cond_c

    move-object v13, v1

    check-cast v13, Lio/realm/internal/y;

    invoke-interface {v13}, Lio/realm/internal/y;->b()Lio/realm/v;

    move-result-object v14

    iget-object v14, v14, Lio/realm/v;->e:Lio/realm/d;

    if-eqz v14, :cond_c

    invoke-interface {v13}, Lio/realm/internal/y;->b()Lio/realm/v;

    move-result-object v13

    iget-object v13, v13, Lio/realm/v;->e:Lio/realm/d;

    iget-wide v14, v13, Lio/realm/d;->q:J

    cmp-long v5, v14, v5

    if-nez v5, :cond_b

    iget-object v5, v13, Lio/realm/d;->r:Lio/realm/J;

    iget-object v5, v5, Lio/realm/J;->c:Ljava/lang/String;

    iget-object v4, v4, Lio/realm/J;->c:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    goto/16 :goto_4

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    sget-object v4, Lio/realm/d;->y:LB5/c;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/realm/c;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/realm/internal/y;

    if-eqz v5, :cond_d

    move-object v1, v5

    check-cast v1, Lib/player/models/EpisodeModel;

    goto/16 :goto_4

    :cond_d
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/realm/internal/y;

    if-eqz v5, :cond_e

    move-object v1, v5

    check-cast v1, Lib/player/models/EpisodeModel;

    goto/16 :goto_4

    :cond_e
    invoke-virtual {v7, v9}, Lio/realm/k;->b(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v5

    new-instance v6, Lio/realm/internal/objectstore/OsObjectBuilder;

    invoke-direct {v6, v5, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;Ljava/util/Set;)V

    iget-wide v13, v10, Lio/realm/Z;->e:J

    invoke-virtual {v1}, Lib/player/models/EpisodeModel;->realmGet$id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v13, v14, v5}, Lio/realm/internal/objectstore/OsObjectBuilder;->r(JLjava/lang/String;)V

    iget-wide v13, v10, Lio/realm/Z;->f:J

    invoke-virtual {v1}, Lib/player/models/EpisodeModel;->realmGet$episode_num()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v13, v14, v5}, Lio/realm/internal/objectstore/OsObjectBuilder;->r(JLjava/lang/String;)V

    iget-wide v13, v10, Lio/realm/Z;->g:J

    invoke-virtual {v1}, Lib/player/models/EpisodeModel;->realmGet$title()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v13, v14, v5}, Lio/realm/internal/objectstore/OsObjectBuilder;->r(JLjava/lang/String;)V

    iget-wide v13, v10, Lio/realm/Z;->h:J

    invoke-virtual {v1}, Lib/player/models/EpisodeModel;->realmGet$container_extension()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v13, v14, v5}, Lio/realm/internal/objectstore/OsObjectBuilder;->r(JLjava/lang/String;)V

    iget-wide v13, v10, Lio/realm/Z;->i:J

    invoke-virtual {v1}, Lib/player/models/EpisodeModel;->realmGet$season()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v13, v14, v5}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/Integer;)V

    iget-wide v13, v10, Lio/realm/Z;->k:J

    invoke-virtual {v1}, Lib/player/models/EpisodeModel;->realmGet$category_name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v13, v14, v5}, Lio/realm/internal/objectstore/OsObjectBuilder;->r(JLjava/lang/String;)V

    iget-wide v13, v10, Lio/realm/Z;->l:J

    invoke-virtual {v1}, Lib/player/models/EpisodeModel;->realmGet$stream_icon()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v13, v14, v5}, Lio/realm/internal/objectstore/OsObjectBuilder;->r(JLjava/lang/String;)V

    iget-wide v13, v10, Lio/realm/Z;->m:J

    invoke-virtual {v1}, Lib/player/models/EpisodeModel;->realmGet$season_name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v13, v14, v5}, Lio/realm/internal/objectstore/OsObjectBuilder;->r(JLjava/lang/String;)V

    iget-wide v13, v10, Lio/realm/Z;->n:J

    invoke-virtual {v1}, Lib/player/models/EpisodeModel;->realmGet$series_name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v13, v14, v5}, Lio/realm/internal/objectstore/OsObjectBuilder;->r(JLjava/lang/String;)V

    iget-wide v10, v10, Lio/realm/Z;->o:J

    invoke-virtual {v1}, Lib/player/models/EpisodeModel;->realmGet$url()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v10, v11, v5}, Lio/realm/internal/objectstore/OsObjectBuilder;->r(JLjava/lang/String;)V

    invoke-virtual {v6}, Lio/realm/internal/objectstore/OsObjectBuilder;->s()Lio/realm/internal/UncheckedRow;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/realm/c;

    invoke-virtual {v7, v9}, Lio/realm/k;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object v6

    sget-object v9, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {v4, v0, v5, v6}, Lio/realm/c;->b(Lio/realm/d;Lio/realm/internal/A;Lio/realm/internal/c;)V

    new-instance v5, Lio/realm/a0;

    invoke-direct {v5}, Lio/realm/a0;-><init>()V

    invoke-virtual {v4}, Lio/realm/c;->a()V

    invoke-virtual {v2, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lib/player/models/EpisodeModel;->realmGet$info_model()Lib/player/models/EpisodeInfoModel;

    move-result-object v1

    if-nez v1, :cond_f

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Lio/realm/a0;->realmSet$info_model(Lib/player/models/EpisodeInfoModel;)V

    :goto_3
    move-object v1, v5

    goto :goto_4

    :cond_f
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lib/player/models/EpisodeInfoModel;

    if-eqz v4, :cond_10

    invoke-virtual {v5, v4}, Lio/realm/a0;->realmSet$info_model(Lib/player/models/EpisodeInfoModel;)V

    goto :goto_3

    :cond_10
    invoke-virtual {v7, v12}, Lio/realm/k;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object v4

    check-cast v4, Lio/realm/X;

    invoke-static {v0, v4, v1, v2, v3}, Lio/realm/Y;->c(Lio/realm/y;Lio/realm/X;Lib/player/models/EpisodeInfoModel;Ljava/util/HashMap;Ljava/util/Set;)Lib/player/models/EpisodeInfoModel;

    move-result-object v0

    invoke-virtual {v5, v0}, Lio/realm/a0;->realmSet$info_model(Lib/player/models/EpisodeInfoModel;)V

    goto :goto_3

    :goto_4
    invoke-virtual {v8, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/M;

    return-object v0

    :cond_11
    invoke-virtual {v8, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    invoke-virtual {v7, v12}, Lio/realm/k;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object v4

    check-cast v4, Lio/realm/X;

    check-cast v1, Lib/player/models/EpisodeInfoModel;

    invoke-static {v0, v4, v1, v2, v3}, Lio/realm/Y;->c(Lio/realm/y;Lio/realm/X;Lib/player/models/EpisodeInfoModel;Ljava/util/HashMap;Ljava/util/Set;)Lib/player/models/EpisodeInfoModel;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/M;

    return-object v0

    :cond_12
    const-class v9, Lib/player/models/EPGChannel;

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_17

    invoke-virtual {v7, v9}, Lio/realm/k;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object v10

    check-cast v10, Lio/realm/V;

    check-cast v1, Lib/player/models/EPGChannel;

    sget-object v12, Lio/realm/W;->r:Lio/realm/internal/OsObjectSchemaInfo;

    instance-of v12, v1, Lio/realm/internal/y;

    if-eqz v12, :cond_14

    invoke-static {v1}, Lio/realm/O;->isFrozen(Lio/realm/M;)Z

    move-result v12

    if-nez v12, :cond_14

    move-object v12, v1

    check-cast v12, Lio/realm/internal/y;

    invoke-interface {v12}, Lio/realm/internal/y;->b()Lio/realm/v;

    move-result-object v13

    iget-object v13, v13, Lio/realm/v;->e:Lio/realm/d;

    if-eqz v13, :cond_14

    invoke-interface {v12}, Lio/realm/internal/y;->b()Lio/realm/v;

    move-result-object v12

    iget-object v12, v12, Lio/realm/v;->e:Lio/realm/d;

    iget-wide v13, v12, Lio/realm/d;->q:J

    cmp-long v5, v13, v5

    if-nez v5, :cond_13

    iget-object v5, v12, Lio/realm/d;->r:Lio/realm/J;

    iget-object v5, v5, Lio/realm/J;->c:Ljava/lang/String;

    iget-object v4, v4, Lio/realm/J;->c:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    goto/16 :goto_5

    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    sget-object v4, Lio/realm/d;->y:LB5/c;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/realm/c;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/realm/internal/y;

    if-eqz v5, :cond_15

    move-object v1, v5

    check-cast v1, Lib/player/models/EPGChannel;

    goto/16 :goto_5

    :cond_15
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/realm/internal/y;

    if-eqz v5, :cond_16

    move-object v1, v5

    check-cast v1, Lib/player/models/EPGChannel;

    goto/16 :goto_5

    :cond_16
    invoke-virtual {v7, v9}, Lio/realm/k;->b(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v5

    new-instance v6, Lio/realm/internal/objectstore/OsObjectBuilder;

    invoke-direct {v6, v5, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;Ljava/util/Set;)V

    iget-wide v11, v10, Lio/realm/V;->e:J

    invoke-virtual {v1}, Lib/player/models/EPGChannel;->realmGet$selected()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v6, v11, v12, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->a(JLjava/lang/Boolean;)V

    iget-wide v11, v10, Lio/realm/V;->f:J

    invoke-virtual {v1}, Lib/player/models/EPGChannel;->realmGet$num()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v11, v12, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->r(JLjava/lang/String;)V

    iget-wide v11, v10, Lio/realm/V;->g:J

    invoke-virtual {v1}, Lib/player/models/EPGChannel;->realmGet$name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v11, v12, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->r(JLjava/lang/String;)V

    iget-wide v11, v10, Lio/realm/V;->h:J

    invoke-virtual {v1}, Lib/player/models/EPGChannel;->realmGet$stream_type()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v11, v12, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->r(JLjava/lang/String;)V

    iget-wide v11, v10, Lio/realm/V;->i:J

    invoke-virtual {v1}, Lib/player/models/EPGChannel;->realmGet$stream_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v11, v12, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->r(JLjava/lang/String;)V

    iget-wide v11, v10, Lio/realm/V;->j:J

    invoke-virtual {v1}, Lib/player/models/EPGChannel;->realmGet$stream_icon()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v11, v12, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->r(JLjava/lang/String;)V

    iget-wide v11, v10, Lio/realm/V;->k:J

    invoke-virtual {v1}, Lib/player/models/EPGChannel;->realmGet$Id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v11, v12, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->r(JLjava/lang/String;)V

    iget-wide v11, v10, Lio/realm/V;->l:J

    invoke-virtual {v1}, Lib/player/models/EPGChannel;->realmGet$added()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v11, v12, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->r(JLjava/lang/String;)V

    iget-wide v11, v10, Lio/realm/V;->m:J

    invoke-virtual {v1}, Lib/player/models/EPGChannel;->realmGet$category_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v11, v12, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->r(JLjava/lang/String;)V

    iget-wide v11, v10, Lio/realm/V;->n:J

    invoke-virtual {v1}, Lib/player/models/EPGChannel;->realmGet$custom_sid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v11, v12, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->r(JLjava/lang/String;)V

    iget-wide v11, v10, Lio/realm/V;->o:J

    invoke-virtual {v1}, Lib/player/models/EPGChannel;->realmGet$tv_archive()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v11, v12, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->r(JLjava/lang/String;)V

    iget-wide v11, v10, Lio/realm/V;->p:J

    invoke-virtual {v1}, Lib/player/models/EPGChannel;->realmGet$direct_source()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v11, v12, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->r(JLjava/lang/String;)V

    iget-wide v11, v10, Lio/realm/V;->q:J

    invoke-virtual {v1}, Lib/player/models/EPGChannel;->realmGet$tv_archive_duration()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v11, v12, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->r(JLjava/lang/String;)V

    iget-wide v11, v10, Lio/realm/V;->r:J

    invoke-virtual {v1}, Lib/player/models/EPGChannel;->realmGet$url()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v11, v12, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->r(JLjava/lang/String;)V

    iget-wide v11, v10, Lio/realm/V;->s:J

    invoke-virtual {v1}, Lib/player/models/EPGChannel;->realmGet$category_name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v11, v12, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->r(JLjava/lang/String;)V

    iget-wide v11, v10, Lio/realm/V;->t:J

    invoke-virtual {v1}, Lib/player/models/EPGChannel;->realmGet$is_locked()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v6, v11, v12, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->a(JLjava/lang/Boolean;)V

    iget-wide v11, v10, Lio/realm/V;->u:J

    invoke-virtual {v1}, Lib/player/models/EPGChannel;->realmGet$is_favorite()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v6, v11, v12, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->a(JLjava/lang/Boolean;)V

    iget-wide v11, v10, Lio/realm/V;->v:J

    invoke-virtual {v1}, Lib/player/models/EPGChannel;->realmGet$is_recent()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v6, v11, v12, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->a(JLjava/lang/Boolean;)V

    iget-wide v11, v10, Lio/realm/V;->w:J

    invoke-virtual {v1}, Lib/player/models/EPGChannel;->realmGet$recent_pos()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v6, v11, v12, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->h(JLjava/lang/Long;)V

    iget-wide v11, v10, Lio/realm/V;->x:J

    invoke-virtual {v1}, Lib/player/models/EPGChannel;->realmGet$cell()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v11, v12, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/Integer;)V

    iget-wide v10, v10, Lio/realm/V;->y:J

    invoke-virtual {v1}, Lib/player/models/EPGChannel;->realmGet$channelID()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v10, v11, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/Integer;)V

    invoke-virtual {v6}, Lio/realm/internal/objectstore/OsObjectBuilder;->s()Lio/realm/internal/UncheckedRow;

    move-result-object v3

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/realm/c;

    invoke-virtual {v7, v9}, Lio/realm/k;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object v5

    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {v4, v0, v3, v5}, Lio/realm/c;->b(Lio/realm/d;Lio/realm/internal/A;Lio/realm/internal/c;)V

    new-instance v0, Lio/realm/W;

    invoke-direct {v0}, Lio/realm/W;-><init>()V

    invoke-virtual {v4}, Lio/realm/c;->a()V

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    :goto_5
    invoke-virtual {v8, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/M;

    return-object v0

    :cond_17
    invoke-static {v8}, Lio/realm/internal/z;->e(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object v0

    throw v0
.end method

.method public final b(Ljava/lang/Class;Lio/realm/internal/OsSchemaInfo;)Lio/realm/internal/c;
    .locals 21

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    if-eqz v0, :cond_5

    const-class v2, Lib/player/models/SeriesModel;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "plot"

    const-string v4, "is_recent"

    const-string v5, "is_favorite"

    const-string v6, "category_id"

    const-string v7, "rating"

    const-string v8, "stream_type"

    const-string v9, "num"

    const-string v10, "url"

    const-string v11, "category_name"

    const-string v12, "stream_icon"

    const-string v13, "name"

    const/4 v14, 0x1

    if-eqz v2, :cond_0

    sget-object v0, Lio/realm/e0;->r:Lio/realm/internal/OsObjectSchemaInfo;

    new-instance v0, Lio/realm/d0;

    const/16 v2, 0x18

    invoke-direct {v0, v2, v14}, Lio/realm/internal/c;-><init>(IZ)V

    const-string v2, "SeriesModel"

    invoke-virtual {v1, v2}, Lio/realm/internal/OsSchemaInfo;->a(Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v1

    const-string v2, "tmdb"

    invoke-virtual {v0, v2, v2, v1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v14

    iput-wide v14, v0, Lio/realm/d0;->e:J

    invoke-virtual {v0, v9, v9, v1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v14

    iput-wide v14, v0, Lio/realm/d0;->f:J

    invoke-virtual {v0, v13, v13, v1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v13

    iput-wide v13, v0, Lio/realm/d0;->g:J

    invoke-virtual {v0, v8, v8, v1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v8

    iput-wide v8, v0, Lio/realm/d0;->h:J

    const-string v2, "series_id"

    invoke-virtual {v0, v2, v2, v1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v8

    iput-wide v8, v0, Lio/realm/d0;->i:J

    invoke-virtual {v0, v12, v12, v1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v8

    iput-wide v8, v0, Lio/realm/d0;->j:J

    const-string v2, "youtube"

    invoke-virtual {v0, v2, v2, v1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v8

    iput-wide v8, v0, Lio/realm/d0;->k:J

    invoke-virtual {v0, v3, v3, v1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v2

    iput-wide v2, v0, Lio/realm/d0;->l:J

    const-string v2, "cast"

    invoke-virtual {v0, v2, v2, v1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v2

    iput-wide v2, v0, Lio/realm/d0;->m:J

    const-string v2, "director"

    invoke-virtual {v0, v2, v2, v1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v2

    iput-wide v2, v0, Lio/realm/d0;->n:J

    const-string v2, "genre"

    invoke-virtual {v0, v2, v2, v1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v2

    iput-wide v2, v0, Lio/realm/d0;->o:J

    const-string v2, "releaseDate"

    invoke-virtual {v0, v2, v2, v1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v2

    iput-wide v2, v0, Lio/realm/d0;->p:J

    invoke-virtual {v0, v7, v7, v1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v2

    iput-wide v2, v0, Lio/realm/d0;->q:J

    const-string v2, "rating_5based"

    invoke-virtual {v0, v2, v2, v1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v2

    iput-wide v2, v0, Lio/realm/d0;->r:J

    invoke-virtual {v0, v6, v6, v1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v2

    iput-wide v2, v0, Lio/realm/d0;->s:J

    const-string v2, "age"

    invoke-virtual {v0, v2, v2, v1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v2

    iput-wide v2, v0, Lio/realm/d0;->t:J

    const-string v2, "last_modified"

    invoke-virtual {v0, v2, v2, v1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v2

    iput-wide v2, v0, Lio/realm/d0;->u:J

    const-string v2, "season_pos"

    invoke-virtual {v0, v2, v2, v1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v2

    iput-wide v2, v0, Lio/realm/d0;->v:J

    const-string v2, "episode_pos"

    invoke-virtual {v0, v2, v2, v1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v2

    iput-wide v2, v0, Lio/realm/d0;->w:J

    const-string v2, "is_watched"

    invoke-virtual {v0, v2, v2, v1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v2

    iput-wide v2, v0, Lio/realm/d0;->x:J

    invoke-virtual {v0, v5, v5, v1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v2

    iput-wide v2, v0, Lio/realm/d0;->y:J

    invoke-virtual {v0, v4, v4, v1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v2

    iput-wide v2, v0, Lio/realm/d0;->z:J

    invoke-virtual {v0, v11, v11, v1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v2

    iput-wide v2, v0, Lio/realm/d0;->A:J

    invoke-virtual {v0, v10, v10, v1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, v0, Lio/realm/d0;->B:J

    return-object v0

    :cond_0
    const-class v2, Lib/player/models/MovieModel;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v15, "is_locked"

    const-string v14, "tmdb_id"

    move/from16 v17, v2

    const-string v2, "added"

    move-object/from16 v18, v3

    const-string v3, "custom_sid"

    const-string v0, "stream_id"

    if-eqz v17, :cond_1

    sget-object v17, Lio/realm/c0;->r:Lio/realm/internal/OsObjectSchemaInfo;

    move-object/from16 v17, v10

    new-instance v10, Lio/realm/b0;

    move-object/from16 v19, v11

    const/16 v11, 0x14

    move-object/from16 v20, v4

    const/4 v4, 0x1

    invoke-direct {v10, v11, v4}, Lio/realm/internal/c;-><init>(IZ)V

    const-string v4, "MovieModel"

    invoke-virtual {v1, v4}, Lio/realm/internal/OsSchemaInfo;->a(Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v1

    move-object v11, v5

    invoke-virtual {v10, v9, v9, v1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v4

    iput-wide v4, v10, Lio/realm/b0;->e:J

    invoke-virtual {v10, v13, v13, v1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v4

    iput-wide v4, v10, Lio/realm/b0;->f:J

    invoke-virtual {v10, v8, v8, v1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v4

    iput-wide v4, v10, Lio/realm/b0;->g:J

    invoke-virtual {v10, v0, v0, v1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v4

    iput-wide v4, v10, Lio/realm/b0;->h:J

    invoke-virtual {v10, v12, v12, v1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v4

    iput-wide v4, v10, Lio/realm/b0;->i:J

    const-string v0, "extension"

    invoke-virtual {v10, v0, v0, v1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v4

    iput-wide v4, v10, Lio/realm/b0;->j:J

    const-string v0, "type"

    invoke-virtual {v10, v0, v0, v1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v4

    iput-wide v4, v10, Lio/realm/b0;->k:J

    invoke-virtual {v10, v7, v7, v1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v4

    iput-wide v4, v10, Lio/realm/b0;->l:J

    invoke-virtual {v10, v6, v6, v1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v4

    iput-wide v4, v10, Lio/realm/b0;->m:J

    invoke-virtual {v10, v3, v3, v1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v3

    iput-wide v3, v10, Lio/realm/b0;->n:J

    invoke-virtual {v10, v2, v2, v1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v2

    iput-wide v2, v10, Lio/realm/b0;->o:J

    invoke-virtual {v10, v14, v14, v1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v2

    iput-wide v2, v10, Lio/realm/b0;->p:J

    const-string v0, "pro"

    invoke-virtual {v10, v0, v0, v1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v2

    iput-wide v2, v10, Lio/realm/b0;->q:J

    const-string v0, "time"

    invoke-virtual {v10, v0, v0, v1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v2

    iput-wide v2, v10, Lio/realm/b0;->r:J

    const-string v0, "recent_mil"

    invoke-virtual {v10, v0, v0, v1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v2

    iput-wide v2, v10, Lio/realm/b0;->s:J

    invoke-virtual {v10, v15, v15, v1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v2

    iput-wide v2, v10, Lio/realm/b0;->t:J

    invoke-virtual {v10, v11, v11, v1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v2

    iput-wide v2, v10, Lio/realm/b0;->u:J

    move-object/from16 v4, v20

    invoke-virtual {v10, v4, v4, v1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v2

    iput-wide v2, v10, Lio/realm/b0;->v:J

    move-object/from16 v5, v19

    invoke-virtual {v10, v5, v5, v1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v2

    iput-wide v2, v10, Lio/realm/b0;->w:J

    move-object/from16 v0, v17

    invoke-virtual {v10, v0, v0, v1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, v10, Lio/realm/b0;->x:J

    return-object v10

    :cond_1
    move-object/from16 v20, v11

    move-object v11, v5

    move-object/from16 v5, v20

    move-object/from16 v20, v4

    const-class v4, Lib/player/models/EpisodeModel;

    move-object/from16 v17, v11

    move-object/from16 v11, p1

    invoke-virtual {v11, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v0, Lio/realm/a0;->r:Lio/realm/internal/OsObjectSchemaInfo;

    new-instance v0, Lio/realm/Z;

    const/16 v2, 0xb

    const/4 v4, 0x1

    invoke-direct {v0, v2, v4}, Lio/realm/internal/c;-><init>(IZ)V

    const-string v2, "EpisodeModel"

    invoke-virtual {v1, v2}, Lio/realm/internal/OsSchemaInfo;->a(Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0, v2, v2, v1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v2

    iput-wide v2, v0, Lio/realm/Z;->e:J

    const-string v2, "episode_num"

    invoke-virtual {v0, v2, v2, v1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v2

    iput-wide v2, v0, Lio/realm/Z;->f:J

    const-string v2, "title"

    invoke-virtual {v0, v2, v2, v1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v2

    iput-wide v2, v0, Lio/realm/Z;->g:J

    const-string v2, "container_extension"

    invoke-virtual {v0, v2, v2, v1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v2

    iput-wide v2, v0, Lio/realm/Z;->h:J

    const-string v2, "season"

    invoke-virtual {v0, v2, v2, v1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v2

    iput-wide v2, v0, Lio/realm/Z;->i:J

    const-string v2, "info_model"

    invoke-virtual {v0, v2, v2, v1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v2

    iput-wide v2, v0, Lio/realm/Z;->j:J

    invoke-virtual {v0, v5, v5, v1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v2

    iput-wide v2, v0, Lio/realm/Z;->k:J

    invoke-virtual {v0, v12, v12, v1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v2

    iput-wide v2, v0, Lio/realm/Z;->l:J

    const-string v2, "season_name"

    invoke-virtual {v0, v2, v2, v1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v2

    iput-wide v2, v0, Lio/realm/Z;->m:J

    const-string v2, "series_name"

    invoke-virtual {v0, v2, v2, v1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v2

    iput-wide v2, v0, Lio/realm/Z;->n:J

    invoke-virtual {v0, v10, v10, v1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, v0, Lio/realm/Z;->o:J

    return-object v0

    :cond_2
    const-class v4, Lib/player/models/EpisodeInfoModel;

    invoke-virtual {v11, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v0, Lio/realm/Y;->r:Lio/realm/internal/OsObjectSchemaInfo;

    new-instance v0, Lio/realm/X;

    const/16 v2, 0x9

    const/4 v4, 0x1

    invoke-direct {v0, v2, v4}, Lio/realm/internal/c;-><init>(IZ)V

    const-string v2, "EpisodeInfoModel"

    invoke-virtual {v1, v2}, Lio/realm/internal/OsSchemaInfo;->a(Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v1

    invoke-virtual {v0, v14, v14, v1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v2

    iput-wide v2, v0, Lio/realm/X;->e:J

    const-string v2, "bitrate"

    invoke-virtual {v0, v2, v2, v1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v2

    iput-wide v2, v0, Lio/realm/X;->f:J

    const-string v2, "duration"

    invoke-virtual {v0, v2, v2, v1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v2

    iput-wide v2, v0, Lio/realm/X;->g:J

    const-string v2, "duration_secs"

    invoke-virtual {v0, v2, v2, v1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v2

    iput-wide v2, v0, Lio/realm/X;->h:J

    invoke-virtual {v0, v13, v13, v1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v2

    iput-wide v2, v0, Lio/realm/X;->i:J

    invoke-virtual {v0, v7, v7, v1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v2

    iput-wide v2, v0, Lio/realm/X;->j:J

    const-string v2, "releasedate"

    invoke-virtual {v0, v2, v2, v1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v2

    iput-wide v2, v0, Lio/realm/X;->k:J

    move-object/from16 v2, v18

    invoke-virtual {v0, v2, v2, v1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v2

    iput-wide v2, v0, Lio/realm/X;->l:J

    const-string v2, "movie_image"

    invoke-virtual {v0, v2, v2, v1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, v0, Lio/realm/X;->m:J

    return-object v0

    :cond_3
    const-class v4, Lib/player/models/EPGChannel;

    invoke-virtual {v11, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Lio/realm/W;->r:Lio/realm/internal/OsObjectSchemaInfo;

    new-instance v4, Lio/realm/V;

    const/16 v7, 0x15

    const/4 v11, 0x1

    invoke-direct {v4, v7, v11}, Lio/realm/internal/c;-><init>(IZ)V

    const-string v7, "EPGChannel"

    invoke-virtual {v1, v7}, Lio/realm/internal/OsSchemaInfo;->a(Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v1

    const-string v7, "selected"

    move-object/from16 v16, v15

    invoke-virtual {v4, v7, v7, v1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v14

    iput-wide v14, v4, Lio/realm/V;->e:J

    invoke-virtual {v4, v9, v9, v1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v14

    iput-wide v14, v4, Lio/realm/V;->f:J

    invoke-virtual {v4, v13, v13, v1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v13

    iput-wide v13, v4, Lio/realm/V;->g:J

    invoke-virtual {v4, v8, v8, v1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v7

    iput-wide v7, v4, Lio/realm/V;->h:J

    invoke-virtual {v4, v0, v0, v1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v7

    iput-wide v7, v4, Lio/realm/V;->i:J

    invoke-virtual {v4, v12, v12, v1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v7

    iput-wide v7, v4, Lio/realm/V;->j:J

    const-string v0, "Id"

    invoke-virtual {v4, v0, v0, v1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v7

    iput-wide v7, v4, Lio/realm/V;->k:J

    invoke-virtual {v4, v2, v2, v1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v7

    iput-wide v7, v4, Lio/realm/V;->l:J

    invoke-virtual {v4, v6, v6, v1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v6

    iput-wide v6, v4, Lio/realm/V;->m:J

    invoke-virtual {v4, v3, v3, v1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v2

    iput-wide v2, v4, Lio/realm/V;->n:J

    const-string v0, "tv_archive"

    invoke-virtual {v4, v0, v0, v1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v2

    iput-wide v2, v4, Lio/realm/V;->o:J

    const-string v0, "direct_source"

    invoke-virtual {v4, v0, v0, v1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v2

    iput-wide v2, v4, Lio/realm/V;->p:J

    const-string v0, "tv_archive_duration"

    invoke-virtual {v4, v0, v0, v1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v2

    iput-wide v2, v4, Lio/realm/V;->q:J

    invoke-virtual {v4, v10, v10, v1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v2

    iput-wide v2, v4, Lio/realm/V;->r:J

    invoke-virtual {v4, v5, v5, v1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v2

    iput-wide v2, v4, Lio/realm/V;->s:J

    move-object/from16 v0, v16

    invoke-virtual {v4, v0, v0, v1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v2

    iput-wide v2, v4, Lio/realm/V;->t:J

    move-object/from16 v11, v17

    invoke-virtual {v4, v11, v11, v1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v2

    iput-wide v2, v4, Lio/realm/V;->u:J

    move-object/from16 v0, v20

    invoke-virtual {v4, v0, v0, v1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v2

    iput-wide v2, v4, Lio/realm/V;->v:J

    const-string v0, "recent_pos"

    invoke-virtual {v4, v0, v0, v1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v2

    iput-wide v2, v4, Lio/realm/V;->w:J

    const-string v0, "cell"

    invoke-virtual {v4, v0, v0, v1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v2

    iput-wide v2, v4, Lio/realm/V;->x:J

    const-string v0, "channelID"

    invoke-virtual {v4, v0, v0, v1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, v4, Lio/realm/V;->y:J

    return-object v4

    :cond_4
    invoke-static {v11}, Lio/realm/internal/z;->e(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object v0

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "A class extending RealmObject must be provided"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "SeriesModel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class p1, Lib/player/models/SeriesModel;

    return-object p1

    :cond_0
    const-string v0, "MovieModel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-class p1, Lib/player/models/MovieModel;

    return-object p1

    :cond_1
    const-string v0, "EpisodeModel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-class p1, Lib/player/models/EpisodeModel;

    return-object p1

    :cond_2
    const-string v0, "EpisodeInfoModel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-class p1, Lib/player/models/EpisodeInfoModel;

    return-object p1

    :cond_3
    const-string v0, "EPGChannel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-class p1, Lib/player/models/EPGChannel;

    return-object p1

    :cond_4
    new-instance v0, Lio/realm/exceptions/RealmException;

    const-string v1, "\'"

    const-string v2, "\' is not part of the schema for this Realm."

    invoke-static {v1, p1, v2}, LB/f;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "A class extending RealmObject must be provided"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d()Ljava/util/HashMap;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-class v1, Lib/player/models/SeriesModel;

    sget-object v2, Lio/realm/e0;->r:Lio/realm/internal/OsObjectSchemaInfo;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lib/player/models/MovieModel;

    sget-object v2, Lio/realm/c0;->r:Lio/realm/internal/OsObjectSchemaInfo;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lib/player/models/EpisodeModel;

    sget-object v2, Lio/realm/a0;->r:Lio/realm/internal/OsObjectSchemaInfo;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lib/player/models/EpisodeInfoModel;

    sget-object v2, Lio/realm/Y;->r:Lio/realm/internal/OsObjectSchemaInfo;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lib/player/models/EPGChannel;

    sget-object v2, Lio/realm/W;->r:Lio/realm/internal/OsObjectSchemaInfo;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final f()Ljava/util/Set;
    .locals 1

    sget-object v0, Lio/realm/DefaultRealmModuleMediator;->a:Ljava/util/Set;

    return-object v0
.end method

.method public final h(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1

    const-class v0, Lib/player/models/SeriesModel;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "SeriesModel"

    return-object p1

    :cond_0
    const-class v0, Lib/player/models/MovieModel;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "MovieModel"

    return-object p1

    :cond_1
    const-class v0, Lib/player/models/EpisodeModel;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "EpisodeModel"

    return-object p1

    :cond_2
    const-class v0, Lib/player/models/EpisodeInfoModel;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "EpisodeInfoModel"

    return-object p1

    :cond_3
    const-class v0, Lib/player/models/EPGChannel;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "EPGChannel"

    return-object p1

    :cond_4
    invoke-static {p1}, Lio/realm/internal/z;->e(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object p1

    throw p1
.end method

.method public final i(Lio/realm/y;Ljava/util/Collection;)V
    .locals 26

    move-object/from16 v0, p1

    iget-object v1, v0, Lio/realm/d;->r:Lio/realm/J;

    iget-object v2, v0, Lio/realm/y;->z:Lio/realm/k;

    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    new-instance v4, Ljava/util/HashMap;

    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_75

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/realm/M;

    instance-of v6, v5, Lio/realm/internal/y;

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v6

    goto :goto_0

    :cond_0
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    :goto_0
    const-class v7, Lib/player/models/SeriesModel;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-class v9, Lib/player/models/EpisodeInfoModel;

    const-class v10, Lib/player/models/EPGChannel;

    const-class v11, Lib/player/models/EpisodeModel;

    const-class v12, Lib/player/models/MovieModel;

    if-eqz v8, :cond_13

    check-cast v5, Lib/player/models/SeriesModel;

    sget-object v8, Lio/realm/e0;->r:Lio/realm/internal/OsObjectSchemaInfo;

    instance-of v8, v5, Lio/realm/internal/y;

    if-eqz v8, :cond_1

    invoke-static {v5}, Lio/realm/O;->isFrozen(Lio/realm/M;)Z

    move-result v8

    if-nez v8, :cond_1

    move-object v8, v5

    check-cast v8, Lio/realm/internal/y;

    invoke-interface {v8}, Lio/realm/internal/y;->b()Lio/realm/v;

    move-result-object v13

    iget-object v13, v13, Lio/realm/v;->e:Lio/realm/d;

    if-eqz v13, :cond_1

    invoke-interface {v8}, Lio/realm/internal/y;->b()Lio/realm/v;

    move-result-object v13

    iget-object v13, v13, Lio/realm/v;->e:Lio/realm/d;

    iget-object v13, v13, Lio/realm/d;->r:Lio/realm/J;

    iget-object v13, v13, Lio/realm/J;->c:Ljava/lang/String;

    iget-object v14, v1, Lio/realm/J;->c:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v8}, Lio/realm/internal/y;->b()Lio/realm/v;

    move-result-object v5

    iget-object v5, v5, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v5}, Lio/realm/internal/A;->F()J

    goto/16 :goto_36

    :cond_1
    invoke-virtual {v2, v7}, Lio/realm/k;->b(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v8

    iget-wide v13, v8, Lio/realm/internal/Table;->b:J

    invoke-virtual {v2, v7}, Lio/realm/k;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object v15

    check-cast v15, Lio/realm/d0;

    invoke-static {v8}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Lib/player/models/SeriesModel;->realmGet$tmdb()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_2

    move-wide/from16 v20, v13

    iget-wide v13, v15, Lio/realm/d0;->e:J

    move-object v8, v15

    move-wide v15, v13

    move-wide/from16 v13, v20

    const/16 v20, 0x0

    invoke-static/range {v13 .. v20}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    move-wide/from16 v20, v13

    goto :goto_1

    :cond_2
    move-wide/from16 v20, v13

    move-object v8, v15

    iget-wide v13, v8, Lio/realm/d0;->e:J

    const/16 v19, 0x0

    move-wide v15, v13

    move-wide/from16 v13, v20

    invoke-static/range {v13 .. v19}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_1
    iget-wide v13, v8, Lio/realm/d0;->f:J

    invoke-virtual {v5}, Lib/player/models/SeriesModel;->realmGet$num()I

    move-result v15

    move-wide/from16 v22, v13

    int-to-long v13, v15

    move-wide/from16 v24, v20

    move-wide/from16 v19, v13

    move-wide/from16 v13, v24

    const/16 v21, 0x0

    move-wide/from16 v15, v22

    invoke-static/range {v13 .. v21}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    invoke-virtual {v5}, Lib/player/models/SeriesModel;->realmGet$name()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_3

    move-wide/from16 v20, v13

    iget-wide v13, v8, Lio/realm/d0;->g:J

    move-wide v15, v13

    move-wide/from16 v13, v20

    const/16 v20, 0x0

    invoke-static/range {v13 .. v20}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_2

    :cond_3
    move-wide/from16 v20, v13

    iget-wide v13, v8, Lio/realm/d0;->g:J

    const/16 v19, 0x0

    move-wide v15, v13

    move-wide/from16 v13, v20

    invoke-static/range {v13 .. v19}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_2
    invoke-virtual {v5}, Lib/player/models/SeriesModel;->realmGet$stream_type()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_4

    move-wide/from16 v20, v13

    iget-wide v13, v8, Lio/realm/d0;->h:J

    move-wide v15, v13

    move-wide/from16 v13, v20

    const/16 v20, 0x0

    invoke-static/range {v13 .. v20}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_3

    :cond_4
    move-wide/from16 v20, v13

    iget-wide v13, v8, Lio/realm/d0;->h:J

    const/16 v19, 0x0

    move-wide v15, v13

    move-wide/from16 v13, v20

    invoke-static/range {v13 .. v19}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_3
    invoke-virtual {v5}, Lib/player/models/SeriesModel;->realmGet$series_id()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_5

    move-wide/from16 v20, v13

    iget-wide v13, v8, Lio/realm/d0;->i:J

    move-wide v15, v13

    move-wide/from16 v13, v20

    const/16 v20, 0x0

    invoke-static/range {v13 .. v20}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_4

    :cond_5
    move-wide/from16 v20, v13

    iget-wide v13, v8, Lio/realm/d0;->i:J

    const/16 v19, 0x0

    move-wide v15, v13

    move-wide/from16 v13, v20

    invoke-static/range {v13 .. v19}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_4
    invoke-virtual {v5}, Lib/player/models/SeriesModel;->realmGet$stream_icon()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_6

    move-wide/from16 v20, v13

    iget-wide v13, v8, Lio/realm/d0;->j:J

    move-wide v15, v13

    move-wide/from16 v13, v20

    const/16 v20, 0x0

    invoke-static/range {v13 .. v20}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_5

    :cond_6
    move-wide/from16 v20, v13

    iget-wide v13, v8, Lio/realm/d0;->j:J

    const/16 v19, 0x0

    move-wide v15, v13

    move-wide/from16 v13, v20

    invoke-static/range {v13 .. v19}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_5
    invoke-virtual {v5}, Lib/player/models/SeriesModel;->realmGet$youtube()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_7

    move-wide/from16 v20, v13

    iget-wide v13, v8, Lio/realm/d0;->k:J

    move-wide v15, v13

    move-wide/from16 v13, v20

    const/16 v20, 0x0

    invoke-static/range {v13 .. v20}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_6

    :cond_7
    move-wide/from16 v20, v13

    iget-wide v13, v8, Lio/realm/d0;->k:J

    const/16 v19, 0x0

    move-wide v15, v13

    move-wide/from16 v13, v20

    invoke-static/range {v13 .. v19}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_6
    invoke-virtual {v5}, Lib/player/models/SeriesModel;->realmGet$plot()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_8

    move-wide/from16 v20, v13

    iget-wide v13, v8, Lio/realm/d0;->l:J

    move-wide v15, v13

    move-wide/from16 v13, v20

    const/16 v20, 0x0

    invoke-static/range {v13 .. v20}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_7

    :cond_8
    move-wide/from16 v20, v13

    iget-wide v13, v8, Lio/realm/d0;->l:J

    const/16 v19, 0x0

    move-wide v15, v13

    move-wide/from16 v13, v20

    invoke-static/range {v13 .. v19}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_7
    invoke-virtual {v5}, Lib/player/models/SeriesModel;->realmGet$cast()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_9

    move-wide/from16 v20, v13

    iget-wide v13, v8, Lio/realm/d0;->m:J

    move-wide v15, v13

    move-wide/from16 v13, v20

    const/16 v20, 0x0

    invoke-static/range {v13 .. v20}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_8

    :cond_9
    move-wide/from16 v20, v13

    iget-wide v13, v8, Lio/realm/d0;->m:J

    const/16 v19, 0x0

    move-wide v15, v13

    move-wide/from16 v13, v20

    invoke-static/range {v13 .. v19}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_8
    invoke-virtual {v5}, Lib/player/models/SeriesModel;->realmGet$director()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_a

    move-wide/from16 v20, v13

    iget-wide v13, v8, Lio/realm/d0;->n:J

    move-wide v15, v13

    move-wide/from16 v13, v20

    const/16 v20, 0x0

    invoke-static/range {v13 .. v20}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_9

    :cond_a
    move-wide/from16 v20, v13

    iget-wide v13, v8, Lio/realm/d0;->n:J

    const/16 v19, 0x0

    move-wide v15, v13

    move-wide/from16 v13, v20

    invoke-static/range {v13 .. v19}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_9
    invoke-virtual {v5}, Lib/player/models/SeriesModel;->realmGet$genre()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_b

    move-wide/from16 v20, v13

    iget-wide v13, v8, Lio/realm/d0;->o:J

    move-wide v15, v13

    move-wide/from16 v13, v20

    const/16 v20, 0x0

    invoke-static/range {v13 .. v20}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_a

    :cond_b
    move-wide/from16 v20, v13

    iget-wide v13, v8, Lio/realm/d0;->o:J

    const/16 v19, 0x0

    move-wide v15, v13

    move-wide/from16 v13, v20

    invoke-static/range {v13 .. v19}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_a
    invoke-virtual {v5}, Lib/player/models/SeriesModel;->realmGet$releaseDate()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_c

    move-wide/from16 v20, v13

    iget-wide v13, v8, Lio/realm/d0;->p:J

    move-wide v15, v13

    move-wide/from16 v13, v20

    const/16 v20, 0x0

    invoke-static/range {v13 .. v20}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_b

    :cond_c
    move-wide/from16 v20, v13

    iget-wide v13, v8, Lio/realm/d0;->p:J

    const/16 v19, 0x0

    move-wide v15, v13

    move-wide/from16 v13, v20

    invoke-static/range {v13 .. v19}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_b
    invoke-virtual {v5}, Lib/player/models/SeriesModel;->realmGet$rating()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_d

    move-wide/from16 v20, v13

    iget-wide v13, v8, Lio/realm/d0;->q:J

    move-wide v15, v13

    move-wide/from16 v13, v20

    const/16 v20, 0x0

    invoke-static/range {v13 .. v20}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    move-wide/from16 v20, v13

    goto :goto_c

    :cond_d
    move-wide/from16 v20, v13

    iget-wide v13, v8, Lio/realm/d0;->q:J

    const/16 v19, 0x0

    move-wide v15, v13

    move-wide/from16 v13, v20

    invoke-static/range {v13 .. v19}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_c
    iget-wide v13, v8, Lio/realm/d0;->r:J

    invoke-virtual {v5}, Lib/player/models/SeriesModel;->realmGet$rating_5based()F

    move-result v19

    move-wide v15, v13

    move-wide/from16 v13, v20

    const/16 v20, 0x0

    invoke-static/range {v13 .. v20}, Lio/realm/internal/Table;->nativeSetFloat(JJJFZ)V

    invoke-virtual {v5}, Lib/player/models/SeriesModel;->realmGet$category_id()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_e

    move-wide/from16 v20, v13

    iget-wide v13, v8, Lio/realm/d0;->s:J

    move-wide v15, v13

    move-wide/from16 v13, v20

    const/16 v20, 0x0

    invoke-static/range {v13 .. v20}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_d

    :cond_e
    move-wide/from16 v20, v13

    iget-wide v13, v8, Lio/realm/d0;->s:J

    const/16 v19, 0x0

    move-wide v15, v13

    move-wide/from16 v13, v20

    invoke-static/range {v13 .. v19}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_d
    invoke-virtual {v5}, Lib/player/models/SeriesModel;->realmGet$age()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_f

    move-wide/from16 v20, v13

    iget-wide v13, v8, Lio/realm/d0;->t:J

    move-wide v15, v13

    move-wide/from16 v13, v20

    const/16 v20, 0x0

    invoke-static/range {v13 .. v20}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_e

    :cond_f
    move-wide/from16 v20, v13

    iget-wide v13, v8, Lio/realm/d0;->t:J

    const/16 v19, 0x0

    move-wide v15, v13

    move-wide/from16 v13, v20

    invoke-static/range {v13 .. v19}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_e
    invoke-virtual {v5}, Lib/player/models/SeriesModel;->realmGet$last_modified()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_10

    move-wide/from16 v20, v13

    iget-wide v13, v8, Lio/realm/d0;->u:J

    move-wide v15, v13

    move-wide/from16 v13, v20

    const/16 v20, 0x0

    invoke-static/range {v13 .. v20}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    move-wide/from16 v20, v13

    goto :goto_f

    :cond_10
    move-wide/from16 v20, v13

    iget-wide v13, v8, Lio/realm/d0;->u:J

    const/16 v19, 0x0

    move-wide v15, v13

    move-wide/from16 v13, v20

    invoke-static/range {v13 .. v19}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_f
    iget-wide v13, v8, Lio/realm/d0;->v:J

    invoke-virtual {v5}, Lib/player/models/SeriesModel;->realmGet$season_pos()I

    move-result v15

    move-wide/from16 v22, v13

    int-to-long v13, v15

    move-wide/from16 v24, v20

    move-wide/from16 v19, v13

    move-wide/from16 v13, v24

    const/16 v21, 0x0

    move-wide/from16 v15, v22

    invoke-static/range {v13 .. v21}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    move-wide/from16 v20, v13

    iget-wide v13, v8, Lio/realm/d0;->w:J

    invoke-virtual {v5}, Lib/player/models/SeriesModel;->realmGet$episode_pos()I

    move-result v15

    move-wide/from16 v22, v13

    int-to-long v13, v15

    move-wide/from16 v24, v20

    move-wide/from16 v19, v13

    move-wide/from16 v13, v24

    const/16 v21, 0x0

    move-wide/from16 v15, v22

    invoke-static/range {v13 .. v21}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    move-wide/from16 v20, v13

    iget-wide v13, v8, Lio/realm/d0;->x:J

    invoke-virtual {v5}, Lib/player/models/SeriesModel;->realmGet$is_watched()Z

    move-result v19

    move-wide v15, v13

    move-wide/from16 v13, v20

    const/16 v20, 0x0

    invoke-static/range {v13 .. v20}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    move-wide/from16 v20, v13

    iget-wide v13, v8, Lio/realm/d0;->y:J

    invoke-virtual {v5}, Lib/player/models/SeriesModel;->realmGet$is_favorite()Z

    move-result v19

    move-wide v15, v13

    move-wide/from16 v13, v20

    const/16 v20, 0x0

    invoke-static/range {v13 .. v20}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    move-wide/from16 v20, v13

    iget-wide v13, v8, Lio/realm/d0;->z:J

    invoke-virtual {v5}, Lib/player/models/SeriesModel;->realmGet$is_recent()Z

    move-result v19

    move-wide v15, v13

    move-wide/from16 v13, v20

    const/16 v20, 0x0

    invoke-static/range {v13 .. v20}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    invoke-virtual {v5}, Lib/player/models/SeriesModel;->realmGet$category_name()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_11

    move-wide/from16 v20, v13

    iget-wide v13, v8, Lio/realm/d0;->A:J

    move-wide v15, v13

    move-wide/from16 v13, v20

    const/16 v20, 0x0

    invoke-static/range {v13 .. v20}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_10

    :cond_11
    move-wide/from16 v20, v13

    iget-wide v13, v8, Lio/realm/d0;->A:J

    const/16 v19, 0x0

    move-wide v15, v13

    move-wide/from16 v13, v20

    invoke-static/range {v13 .. v19}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_10
    invoke-virtual {v5}, Lib/player/models/SeriesModel;->realmGet$url()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_12

    move-wide/from16 v20, v13

    iget-wide v13, v8, Lio/realm/d0;->B:J

    move-wide v15, v13

    move-wide/from16 v13, v20

    const/16 v20, 0x0

    invoke-static/range {v13 .. v20}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto/16 :goto_36

    :cond_12
    move-wide/from16 v20, v13

    iget-wide v13, v8, Lio/realm/d0;->B:J

    const/16 v19, 0x0

    move-wide v15, v13

    move-wide/from16 v13, v20

    invoke-static/range {v13 .. v19}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    goto/16 :goto_36

    :cond_13
    invoke-virtual {v6, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_22

    check-cast v5, Lib/player/models/MovieModel;

    sget-object v8, Lio/realm/c0;->r:Lio/realm/internal/OsObjectSchemaInfo;

    instance-of v8, v5, Lio/realm/internal/y;

    if-eqz v8, :cond_14

    invoke-static {v5}, Lio/realm/O;->isFrozen(Lio/realm/M;)Z

    move-result v8

    if-nez v8, :cond_14

    move-object v8, v5

    check-cast v8, Lio/realm/internal/y;

    invoke-interface {v8}, Lio/realm/internal/y;->b()Lio/realm/v;

    move-result-object v13

    iget-object v13, v13, Lio/realm/v;->e:Lio/realm/d;

    if-eqz v13, :cond_14

    invoke-interface {v8}, Lio/realm/internal/y;->b()Lio/realm/v;

    move-result-object v13

    iget-object v13, v13, Lio/realm/v;->e:Lio/realm/d;

    iget-object v13, v13, Lio/realm/d;->r:Lio/realm/J;

    iget-object v13, v13, Lio/realm/J;->c:Ljava/lang/String;

    iget-object v14, v1, Lio/realm/J;->c:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_14

    invoke-interface {v8}, Lio/realm/internal/y;->b()Lio/realm/v;

    move-result-object v5

    iget-object v5, v5, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v5}, Lio/realm/internal/A;->F()J

    goto/16 :goto_36

    :cond_14
    invoke-virtual {v2, v12}, Lio/realm/k;->b(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v8

    iget-wide v13, v8, Lio/realm/internal/Table;->b:J

    invoke-virtual {v2, v12}, Lio/realm/k;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object v15

    check-cast v15, Lio/realm/b0;

    invoke-static {v8}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-wide/from16 v19, v13

    iget-wide v13, v15, Lio/realm/b0;->e:J

    invoke-virtual {v5}, Lib/player/models/MovieModel;->realmGet$num()I

    move-result v8

    move-wide/from16 v21, v13

    int-to-long v13, v8

    move-object v8, v15

    move-wide/from16 v15, v21

    const/16 v21, 0x0

    move-wide/from16 v24, v19

    move-wide/from16 v19, v13

    move-wide/from16 v13, v24

    invoke-static/range {v13 .. v21}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    invoke-virtual {v5}, Lib/player/models/MovieModel;->realmGet$name()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_15

    move-wide v15, v13

    iget-wide v13, v8, Lio/realm/b0;->f:J

    const/16 v20, 0x0

    move-wide/from16 v24, v15

    move-wide v15, v13

    move-wide/from16 v13, v24

    invoke-static/range {v13 .. v20}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_11

    :cond_15
    move-wide/from16 v19, v13

    iget-wide v13, v8, Lio/realm/b0;->f:J

    move-wide/from16 v15, v19

    const/16 v19, 0x0

    move-wide/from16 v24, v15

    move-wide v15, v13

    move-wide/from16 v13, v24

    invoke-static/range {v13 .. v19}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_11
    invoke-virtual {v5}, Lib/player/models/MovieModel;->realmGet$stream_type()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_16

    move-wide v15, v13

    iget-wide v13, v8, Lio/realm/b0;->g:J

    const/16 v20, 0x0

    move-wide/from16 v24, v15

    move-wide v15, v13

    move-wide/from16 v13, v24

    invoke-static/range {v13 .. v20}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_12

    :cond_16
    move-wide/from16 v19, v13

    iget-wide v13, v8, Lio/realm/b0;->g:J

    move-wide/from16 v15, v19

    const/16 v19, 0x0

    move-wide/from16 v24, v15

    move-wide v15, v13

    move-wide/from16 v13, v24

    invoke-static/range {v13 .. v19}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_12
    invoke-virtual {v5}, Lib/player/models/MovieModel;->realmGet$stream_id()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_17

    move-wide v15, v13

    iget-wide v13, v8, Lio/realm/b0;->h:J

    const/16 v20, 0x0

    move-wide/from16 v24, v15

    move-wide v15, v13

    move-wide/from16 v13, v24

    invoke-static/range {v13 .. v20}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_13

    :cond_17
    move-wide/from16 v19, v13

    iget-wide v13, v8, Lio/realm/b0;->h:J

    move-wide/from16 v15, v19

    const/16 v19, 0x0

    move-wide/from16 v24, v15

    move-wide v15, v13

    move-wide/from16 v13, v24

    invoke-static/range {v13 .. v19}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_13
    invoke-virtual {v5}, Lib/player/models/MovieModel;->realmGet$stream_icon()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_18

    move-wide v15, v13

    iget-wide v13, v8, Lio/realm/b0;->i:J

    const/16 v20, 0x0

    move-wide/from16 v24, v15

    move-wide v15, v13

    move-wide/from16 v13, v24

    invoke-static/range {v13 .. v20}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_14

    :cond_18
    move-wide/from16 v19, v13

    iget-wide v13, v8, Lio/realm/b0;->i:J

    move-wide/from16 v15, v19

    const/16 v19, 0x0

    move-wide/from16 v24, v15

    move-wide v15, v13

    move-wide/from16 v13, v24

    invoke-static/range {v13 .. v19}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_14
    invoke-virtual {v5}, Lib/player/models/MovieModel;->realmGet$extension()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_19

    move-wide v15, v13

    iget-wide v13, v8, Lio/realm/b0;->j:J

    const/16 v20, 0x0

    move-wide/from16 v24, v15

    move-wide v15, v13

    move-wide/from16 v13, v24

    invoke-static/range {v13 .. v20}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_15

    :cond_19
    move-wide/from16 v19, v13

    iget-wide v13, v8, Lio/realm/b0;->j:J

    move-wide/from16 v15, v19

    const/16 v19, 0x0

    move-wide/from16 v24, v15

    move-wide v15, v13

    move-wide/from16 v13, v24

    invoke-static/range {v13 .. v19}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_15
    invoke-virtual {v5}, Lib/player/models/MovieModel;->realmGet$type()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_1a

    move-wide v15, v13

    iget-wide v13, v8, Lio/realm/b0;->k:J

    const/16 v20, 0x0

    move-wide/from16 v24, v15

    move-wide v15, v13

    move-wide/from16 v13, v24

    invoke-static/range {v13 .. v20}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_16

    :cond_1a
    move-wide/from16 v19, v13

    iget-wide v13, v8, Lio/realm/b0;->k:J

    move-wide/from16 v15, v19

    const/16 v19, 0x0

    move-wide/from16 v24, v15

    move-wide v15, v13

    move-wide/from16 v13, v24

    invoke-static/range {v13 .. v19}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_16
    invoke-virtual {v5}, Lib/player/models/MovieModel;->realmGet$rating()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_1b

    move-wide v15, v13

    iget-wide v13, v8, Lio/realm/b0;->l:J

    const/16 v20, 0x0

    move-wide/from16 v24, v15

    move-wide v15, v13

    move-wide/from16 v13, v24

    invoke-static/range {v13 .. v20}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_17

    :cond_1b
    move-wide/from16 v19, v13

    iget-wide v13, v8, Lio/realm/b0;->l:J

    move-wide/from16 v15, v19

    const/16 v19, 0x0

    move-wide/from16 v24, v15

    move-wide v15, v13

    move-wide/from16 v13, v24

    invoke-static/range {v13 .. v19}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_17
    invoke-virtual {v5}, Lib/player/models/MovieModel;->realmGet$category_id()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_1c

    move-wide v15, v13

    iget-wide v13, v8, Lio/realm/b0;->m:J

    const/16 v20, 0x0

    move-wide/from16 v24, v15

    move-wide v15, v13

    move-wide/from16 v13, v24

    invoke-static/range {v13 .. v20}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_18

    :cond_1c
    move-wide/from16 v19, v13

    iget-wide v13, v8, Lio/realm/b0;->m:J

    move-wide/from16 v15, v19

    const/16 v19, 0x0

    move-wide/from16 v24, v15

    move-wide v15, v13

    move-wide/from16 v13, v24

    invoke-static/range {v13 .. v19}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_18
    invoke-virtual {v5}, Lib/player/models/MovieModel;->realmGet$custom_sid()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_1d

    move-wide v15, v13

    iget-wide v13, v8, Lio/realm/b0;->n:J

    const/16 v20, 0x0

    move-wide/from16 v24, v15

    move-wide v15, v13

    move-wide/from16 v13, v24

    invoke-static/range {v13 .. v20}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_19

    :cond_1d
    move-wide/from16 v19, v13

    iget-wide v13, v8, Lio/realm/b0;->n:J

    move-wide/from16 v15, v19

    const/16 v19, 0x0

    move-wide/from16 v24, v15

    move-wide v15, v13

    move-wide/from16 v13, v24

    invoke-static/range {v13 .. v19}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_19
    invoke-virtual {v5}, Lib/player/models/MovieModel;->realmGet$added()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_1e

    move-wide v15, v13

    iget-wide v13, v8, Lio/realm/b0;->o:J

    const/16 v20, 0x0

    move-wide/from16 v24, v15

    move-wide v15, v13

    move-wide/from16 v13, v24

    invoke-static/range {v13 .. v20}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_1a

    :cond_1e
    move-wide/from16 v19, v13

    iget-wide v13, v8, Lio/realm/b0;->o:J

    move-wide/from16 v15, v19

    const/16 v19, 0x0

    move-wide/from16 v24, v15

    move-wide v15, v13

    move-wide/from16 v13, v24

    invoke-static/range {v13 .. v19}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_1a
    invoke-virtual {v5}, Lib/player/models/MovieModel;->realmGet$tmdb_id()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_1f

    move-wide v15, v13

    iget-wide v13, v8, Lio/realm/b0;->p:J

    const/16 v20, 0x0

    move-wide/from16 v24, v15

    move-wide v15, v13

    move-wide/from16 v13, v24

    invoke-static/range {v13 .. v20}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    :goto_1b
    move-wide/from16 v19, v13

    goto :goto_1c

    :cond_1f
    move-wide/from16 v19, v13

    iget-wide v13, v8, Lio/realm/b0;->p:J

    move-wide/from16 v15, v19

    const/16 v19, 0x0

    move-wide/from16 v24, v15

    move-wide v15, v13

    move-wide/from16 v13, v24

    invoke-static/range {v13 .. v19}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    goto :goto_1b

    :goto_1c
    iget-wide v13, v8, Lio/realm/b0;->q:J

    invoke-virtual {v5}, Lib/player/models/MovieModel;->realmGet$pro()I

    move-result v15

    move-wide/from16 v21, v13

    int-to-long v13, v15

    move-wide/from16 v15, v21

    const/16 v21, 0x0

    move-wide/from16 v24, v19

    move-wide/from16 v19, v13

    move-wide/from16 v13, v24

    invoke-static/range {v13 .. v21}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    move-wide/from16 v19, v13

    iget-wide v13, v8, Lio/realm/b0;->r:J

    move-wide/from16 v15, v19

    invoke-virtual {v5}, Lib/player/models/MovieModel;->realmGet$time()J

    move-result-wide v19

    move-wide/from16 v24, v15

    move-wide v15, v13

    move-wide/from16 v13, v24

    invoke-static/range {v13 .. v21}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    move-wide/from16 v19, v13

    iget-wide v13, v8, Lio/realm/b0;->s:J

    move-wide/from16 v15, v19

    invoke-virtual {v5}, Lib/player/models/MovieModel;->realmGet$recent_mil()J

    move-result-wide v19

    move-wide/from16 v24, v15

    move-wide v15, v13

    move-wide/from16 v13, v24

    invoke-static/range {v13 .. v21}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    move-wide/from16 v19, v13

    iget-wide v13, v8, Lio/realm/b0;->t:J

    move-wide/from16 v15, v19

    invoke-virtual {v5}, Lib/player/models/MovieModel;->realmGet$is_locked()Z

    move-result v19

    const/16 v20, 0x0

    move-wide/from16 v24, v15

    move-wide v15, v13

    move-wide/from16 v13, v24

    invoke-static/range {v13 .. v20}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    move-wide/from16 v19, v13

    iget-wide v13, v8, Lio/realm/b0;->u:J

    move-wide/from16 v15, v19

    invoke-virtual {v5}, Lib/player/models/MovieModel;->realmGet$is_favorite()Z

    move-result v19

    const/16 v20, 0x0

    move-wide/from16 v24, v15

    move-wide v15, v13

    move-wide/from16 v13, v24

    invoke-static/range {v13 .. v20}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    move-wide/from16 v19, v13

    iget-wide v13, v8, Lio/realm/b0;->v:J

    move-wide/from16 v15, v19

    invoke-virtual {v5}, Lib/player/models/MovieModel;->realmGet$is_recent()Z

    move-result v19

    const/16 v20, 0x0

    move-wide/from16 v24, v15

    move-wide v15, v13

    move-wide/from16 v13, v24

    invoke-static/range {v13 .. v20}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    invoke-virtual {v5}, Lib/player/models/MovieModel;->realmGet$category_name()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_20

    move-wide v15, v13

    iget-wide v13, v8, Lio/realm/b0;->w:J

    const/16 v20, 0x0

    move-wide/from16 v24, v15

    move-wide v15, v13

    move-wide/from16 v13, v24

    invoke-static/range {v13 .. v20}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_1d

    :cond_20
    move-wide/from16 v19, v13

    iget-wide v13, v8, Lio/realm/b0;->w:J

    move-wide/from16 v15, v19

    const/16 v19, 0x0

    move-wide/from16 v24, v15

    move-wide v15, v13

    move-wide/from16 v13, v24

    invoke-static/range {v13 .. v19}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_1d
    invoke-virtual {v5}, Lib/player/models/MovieModel;->realmGet$url()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_21

    move-wide v15, v13

    iget-wide v13, v8, Lio/realm/b0;->x:J

    const/16 v20, 0x0

    move-wide/from16 v24, v15

    move-wide v15, v13

    move-wide/from16 v13, v24

    invoke-static/range {v13 .. v20}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto/16 :goto_36

    :cond_21
    move-wide/from16 v19, v13

    iget-wide v13, v8, Lio/realm/b0;->x:J

    move-wide/from16 v15, v19

    const/16 v19, 0x0

    move-wide/from16 v24, v15

    move-wide v15, v13

    move-wide/from16 v13, v24

    invoke-static/range {v13 .. v19}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    goto/16 :goto_36

    :cond_22
    invoke-virtual {v6, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2f

    check-cast v5, Lib/player/models/EpisodeModel;

    sget-object v8, Lio/realm/a0;->r:Lio/realm/internal/OsObjectSchemaInfo;

    instance-of v8, v5, Lio/realm/internal/y;

    if-eqz v8, :cond_23

    invoke-static {v5}, Lio/realm/O;->isFrozen(Lio/realm/M;)Z

    move-result v8

    if-nez v8, :cond_23

    move-object v8, v5

    check-cast v8, Lio/realm/internal/y;

    invoke-interface {v8}, Lio/realm/internal/y;->b()Lio/realm/v;

    move-result-object v13

    iget-object v13, v13, Lio/realm/v;->e:Lio/realm/d;

    if-eqz v13, :cond_23

    invoke-interface {v8}, Lio/realm/internal/y;->b()Lio/realm/v;

    move-result-object v13

    iget-object v13, v13, Lio/realm/v;->e:Lio/realm/d;

    iget-object v13, v13, Lio/realm/d;->r:Lio/realm/J;

    iget-object v13, v13, Lio/realm/J;->c:Ljava/lang/String;

    iget-object v14, v1, Lio/realm/J;->c:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_23

    invoke-interface {v8}, Lio/realm/internal/y;->b()Lio/realm/v;

    move-result-object v5

    iget-object v5, v5, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v5}, Lio/realm/internal/A;->F()J

    goto/16 :goto_36

    :cond_23
    invoke-virtual {v2, v11}, Lio/realm/k;->b(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v8

    iget-wide v13, v8, Lio/realm/internal/Table;->b:J

    invoke-virtual {v2, v11}, Lio/realm/k;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object v15

    check-cast v15, Lio/realm/Z;

    invoke-static {v8}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Lib/player/models/EpisodeModel;->realmGet$id()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_24

    move-wide/from16 v20, v13

    iget-wide v13, v15, Lio/realm/Z;->e:J

    move-object v8, v15

    move-wide v15, v13

    move-wide/from16 v13, v20

    const/16 v20, 0x0

    invoke-static/range {v13 .. v20}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_1e

    :cond_24
    move-wide/from16 v20, v13

    move-object v8, v15

    iget-wide v13, v8, Lio/realm/Z;->e:J

    const/16 v19, 0x0

    move-wide v15, v13

    move-wide/from16 v13, v20

    invoke-static/range {v13 .. v19}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_1e
    invoke-virtual {v5}, Lib/player/models/EpisodeModel;->realmGet$episode_num()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_25

    move-wide/from16 v20, v13

    iget-wide v13, v8, Lio/realm/Z;->f:J

    move-wide v15, v13

    move-wide/from16 v13, v20

    const/16 v20, 0x0

    invoke-static/range {v13 .. v20}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_1f

    :cond_25
    move-wide/from16 v20, v13

    iget-wide v13, v8, Lio/realm/Z;->f:J

    const/16 v19, 0x0

    move-wide v15, v13

    move-wide/from16 v13, v20

    invoke-static/range {v13 .. v19}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_1f
    invoke-virtual {v5}, Lib/player/models/EpisodeModel;->realmGet$title()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_26

    move-wide/from16 v20, v13

    iget-wide v13, v8, Lio/realm/Z;->g:J

    move-wide v15, v13

    move-wide/from16 v13, v20

    const/16 v20, 0x0

    invoke-static/range {v13 .. v20}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_20

    :cond_26
    move-wide/from16 v20, v13

    iget-wide v13, v8, Lio/realm/Z;->g:J

    const/16 v19, 0x0

    move-wide v15, v13

    move-wide/from16 v13, v20

    invoke-static/range {v13 .. v19}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_20
    invoke-virtual {v5}, Lib/player/models/EpisodeModel;->realmGet$container_extension()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_27

    move-wide/from16 v20, v13

    iget-wide v13, v8, Lio/realm/Z;->h:J

    move-wide v15, v13

    move-wide/from16 v13, v20

    const/16 v20, 0x0

    invoke-static/range {v13 .. v20}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    move-wide/from16 v20, v13

    goto :goto_21

    :cond_27
    move-wide/from16 v20, v13

    iget-wide v13, v8, Lio/realm/Z;->h:J

    const/16 v19, 0x0

    move-wide v15, v13

    move-wide/from16 v13, v20

    invoke-static/range {v13 .. v19}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_21
    iget-wide v13, v8, Lio/realm/Z;->i:J

    invoke-virtual {v5}, Lib/player/models/EpisodeModel;->realmGet$season()I

    move-result v15

    move-wide/from16 v22, v13

    int-to-long v13, v15

    move-wide/from16 v24, v20

    move-wide/from16 v19, v13

    move-wide/from16 v13, v24

    const/16 v21, 0x0

    move-wide/from16 v15, v22

    invoke-static/range {v13 .. v21}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    invoke-virtual {v5}, Lib/player/models/EpisodeModel;->realmGet$info_model()Lib/player/models/EpisodeInfoModel;

    move-result-object v15

    if-eqz v15, :cond_29

    invoke-virtual {v4, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    if-nez v16, :cond_28

    invoke-static {v0, v15, v4}, Lio/realm/Y;->d(Lio/realm/y;Lib/player/models/EpisodeInfoModel;Ljava/util/HashMap;)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    :cond_28
    move-wide/from16 v20, v13

    iget-wide v13, v8, Lio/realm/Z;->j:J

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    move-wide/from16 v24, v15

    move-wide v15, v13

    move-wide/from16 v13, v20

    move-wide/from16 v19, v24

    const/16 v21, 0x0

    invoke-static/range {v13 .. v21}, Lio/realm/internal/Table;->nativeSetLink(JJJJZ)V

    goto :goto_22

    :cond_29
    move-wide/from16 v20, v13

    iget-wide v13, v8, Lio/realm/Z;->j:J

    move-wide v15, v13

    move-wide/from16 v13, v20

    invoke-static/range {v13 .. v18}, Lio/realm/internal/Table;->nativeNullifyLink(JJJ)V

    :goto_22
    invoke-virtual {v5}, Lib/player/models/EpisodeModel;->realmGet$category_name()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_2a

    move-wide/from16 v20, v13

    iget-wide v13, v8, Lio/realm/Z;->k:J

    move-wide v15, v13

    move-wide/from16 v13, v20

    const/16 v20, 0x0

    invoke-static/range {v13 .. v20}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_23

    :cond_2a
    move-wide/from16 v20, v13

    iget-wide v13, v8, Lio/realm/Z;->k:J

    const/16 v19, 0x0

    move-wide v15, v13

    move-wide/from16 v13, v20

    invoke-static/range {v13 .. v19}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_23
    invoke-virtual {v5}, Lib/player/models/EpisodeModel;->realmGet$stream_icon()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_2b

    move-wide/from16 v20, v13

    iget-wide v13, v8, Lio/realm/Z;->l:J

    move-wide v15, v13

    move-wide/from16 v13, v20

    const/16 v20, 0x0

    invoke-static/range {v13 .. v20}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_24

    :cond_2b
    move-wide/from16 v20, v13

    iget-wide v13, v8, Lio/realm/Z;->l:J

    const/16 v19, 0x0

    move-wide v15, v13

    move-wide/from16 v13, v20

    invoke-static/range {v13 .. v19}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_24
    invoke-virtual {v5}, Lib/player/models/EpisodeModel;->realmGet$season_name()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_2c

    move-wide/from16 v20, v13

    iget-wide v13, v8, Lio/realm/Z;->m:J

    move-wide v15, v13

    move-wide/from16 v13, v20

    const/16 v20, 0x0

    invoke-static/range {v13 .. v20}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_25

    :cond_2c
    move-wide/from16 v20, v13

    iget-wide v13, v8, Lio/realm/Z;->m:J

    const/16 v19, 0x0

    move-wide v15, v13

    move-wide/from16 v13, v20

    invoke-static/range {v13 .. v19}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_25
    invoke-virtual {v5}, Lib/player/models/EpisodeModel;->realmGet$series_name()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_2d

    move-wide/from16 v20, v13

    iget-wide v13, v8, Lio/realm/Z;->n:J

    move-wide v15, v13

    move-wide/from16 v13, v20

    const/16 v20, 0x0

    invoke-static/range {v13 .. v20}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_26

    :cond_2d
    move-wide/from16 v20, v13

    iget-wide v13, v8, Lio/realm/Z;->n:J

    const/16 v19, 0x0

    move-wide v15, v13

    move-wide/from16 v13, v20

    invoke-static/range {v13 .. v19}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_26
    invoke-virtual {v5}, Lib/player/models/EpisodeModel;->realmGet$url()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_2e

    move-wide/from16 v20, v13

    iget-wide v13, v8, Lio/realm/Z;->o:J

    move-wide v15, v13

    move-wide/from16 v13, v20

    const/16 v20, 0x0

    invoke-static/range {v13 .. v20}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto/16 :goto_36

    :cond_2e
    move-wide/from16 v20, v13

    iget-wide v13, v8, Lio/realm/Z;->o:J

    const/16 v19, 0x0

    move-wide v15, v13

    move-wide/from16 v13, v20

    invoke-static/range {v13 .. v19}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    goto/16 :goto_36

    :cond_2f
    invoke-virtual {v6, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_30

    check-cast v5, Lib/player/models/EpisodeInfoModel;

    invoke-static {v0, v5, v4}, Lio/realm/Y;->d(Lio/realm/y;Lib/player/models/EpisodeInfoModel;Ljava/util/HashMap;)J

    goto/16 :goto_36

    :cond_30
    invoke-virtual {v6, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_74

    check-cast v5, Lib/player/models/EPGChannel;

    sget-object v8, Lio/realm/W;->r:Lio/realm/internal/OsObjectSchemaInfo;

    instance-of v8, v5, Lio/realm/internal/y;

    if-eqz v8, :cond_31

    invoke-static {v5}, Lio/realm/O;->isFrozen(Lio/realm/M;)Z

    move-result v8

    if-nez v8, :cond_31

    move-object v8, v5

    check-cast v8, Lio/realm/internal/y;

    invoke-interface {v8}, Lio/realm/internal/y;->b()Lio/realm/v;

    move-result-object v13

    iget-object v13, v13, Lio/realm/v;->e:Lio/realm/d;

    if-eqz v13, :cond_31

    invoke-interface {v8}, Lio/realm/internal/y;->b()Lio/realm/v;

    move-result-object v13

    iget-object v13, v13, Lio/realm/v;->e:Lio/realm/d;

    iget-object v13, v13, Lio/realm/d;->r:Lio/realm/J;

    iget-object v13, v13, Lio/realm/J;->c:Ljava/lang/String;

    iget-object v14, v1, Lio/realm/J;->c:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_31

    invoke-interface {v8}, Lio/realm/internal/y;->b()Lio/realm/v;

    move-result-object v5

    iget-object v5, v5, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v5}, Lio/realm/internal/A;->F()J

    goto/16 :goto_36

    :cond_31
    invoke-virtual {v2, v10}, Lio/realm/k;->b(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v8

    iget-wide v13, v8, Lio/realm/internal/Table;->b:J

    invoke-virtual {v2, v10}, Lio/realm/k;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object v15

    check-cast v15, Lio/realm/V;

    invoke-static {v8}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-wide/from16 v19, v13

    iget-wide v13, v15, Lio/realm/V;->e:J

    move-object v8, v15

    move-wide v15, v13

    move-wide/from16 v13, v19

    invoke-virtual {v5}, Lib/player/models/EPGChannel;->realmGet$selected()Z

    move-result v19

    const/16 v20, 0x0

    invoke-static/range {v13 .. v20}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    invoke-virtual {v5}, Lib/player/models/EPGChannel;->realmGet$num()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_32

    move-wide v15, v13

    iget-wide v13, v8, Lio/realm/V;->f:J

    const/16 v20, 0x0

    move-wide/from16 v24, v15

    move-wide v15, v13

    move-wide/from16 v13, v24

    invoke-static/range {v13 .. v20}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_27

    :cond_32
    move-wide/from16 v19, v13

    iget-wide v13, v8, Lio/realm/V;->f:J

    move-wide/from16 v15, v19

    const/16 v19, 0x0

    move-wide/from16 v24, v15

    move-wide v15, v13

    move-wide/from16 v13, v24

    invoke-static/range {v13 .. v19}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_27
    invoke-virtual {v5}, Lib/player/models/EPGChannel;->realmGet$name()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_33

    move-wide v15, v13

    iget-wide v13, v8, Lio/realm/V;->g:J

    const/16 v20, 0x0

    move-wide/from16 v24, v15

    move-wide v15, v13

    move-wide/from16 v13, v24

    invoke-static/range {v13 .. v20}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_28

    :cond_33
    move-wide/from16 v19, v13

    iget-wide v13, v8, Lio/realm/V;->g:J

    move-wide/from16 v15, v19

    const/16 v19, 0x0

    move-wide/from16 v24, v15

    move-wide v15, v13

    move-wide/from16 v13, v24

    invoke-static/range {v13 .. v19}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_28
    invoke-virtual {v5}, Lib/player/models/EPGChannel;->realmGet$stream_type()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_34

    move-wide v15, v13

    iget-wide v13, v8, Lio/realm/V;->h:J

    const/16 v20, 0x0

    move-wide/from16 v24, v15

    move-wide v15, v13

    move-wide/from16 v13, v24

    invoke-static/range {v13 .. v20}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_29

    :cond_34
    move-wide/from16 v19, v13

    iget-wide v13, v8, Lio/realm/V;->h:J

    move-wide/from16 v15, v19

    const/16 v19, 0x0

    move-wide/from16 v24, v15

    move-wide v15, v13

    move-wide/from16 v13, v24

    invoke-static/range {v13 .. v19}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_29
    invoke-virtual {v5}, Lib/player/models/EPGChannel;->realmGet$stream_id()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_35

    move-wide v15, v13

    iget-wide v13, v8, Lio/realm/V;->i:J

    const/16 v20, 0x0

    move-wide/from16 v24, v15

    move-wide v15, v13

    move-wide/from16 v13, v24

    invoke-static/range {v13 .. v20}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_2a

    :cond_35
    move-wide/from16 v19, v13

    iget-wide v13, v8, Lio/realm/V;->i:J

    move-wide/from16 v15, v19

    const/16 v19, 0x0

    move-wide/from16 v24, v15

    move-wide v15, v13

    move-wide/from16 v13, v24

    invoke-static/range {v13 .. v19}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_2a
    invoke-virtual {v5}, Lib/player/models/EPGChannel;->realmGet$stream_icon()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_36

    move-wide v15, v13

    iget-wide v13, v8, Lio/realm/V;->j:J

    const/16 v20, 0x0

    move-wide/from16 v24, v15

    move-wide v15, v13

    move-wide/from16 v13, v24

    invoke-static/range {v13 .. v20}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_2b

    :cond_36
    move-wide/from16 v19, v13

    iget-wide v13, v8, Lio/realm/V;->j:J

    move-wide/from16 v15, v19

    const/16 v19, 0x0

    move-wide/from16 v24, v15

    move-wide v15, v13

    move-wide/from16 v13, v24

    invoke-static/range {v13 .. v19}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_2b
    invoke-virtual {v5}, Lib/player/models/EPGChannel;->realmGet$Id()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_37

    move-wide v15, v13

    iget-wide v13, v8, Lio/realm/V;->k:J

    const/16 v20, 0x0

    move-wide/from16 v24, v15

    move-wide v15, v13

    move-wide/from16 v13, v24

    invoke-static/range {v13 .. v20}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_2c

    :cond_37
    move-wide/from16 v19, v13

    iget-wide v13, v8, Lio/realm/V;->k:J

    move-wide/from16 v15, v19

    const/16 v19, 0x0

    move-wide/from16 v24, v15

    move-wide v15, v13

    move-wide/from16 v13, v24

    invoke-static/range {v13 .. v19}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_2c
    invoke-virtual {v5}, Lib/player/models/EPGChannel;->realmGet$added()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_38

    move-wide v15, v13

    iget-wide v13, v8, Lio/realm/V;->l:J

    const/16 v20, 0x0

    move-wide/from16 v24, v15

    move-wide v15, v13

    move-wide/from16 v13, v24

    invoke-static/range {v13 .. v20}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_2d

    :cond_38
    move-wide/from16 v19, v13

    iget-wide v13, v8, Lio/realm/V;->l:J

    move-wide/from16 v15, v19

    const/16 v19, 0x0

    move-wide/from16 v24, v15

    move-wide v15, v13

    move-wide/from16 v13, v24

    invoke-static/range {v13 .. v19}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_2d
    invoke-virtual {v5}, Lib/player/models/EPGChannel;->realmGet$category_id()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_39

    move-wide v15, v13

    iget-wide v13, v8, Lio/realm/V;->m:J

    const/16 v20, 0x0

    move-wide/from16 v24, v15

    move-wide v15, v13

    move-wide/from16 v13, v24

    invoke-static/range {v13 .. v20}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_2e

    :cond_39
    move-wide/from16 v19, v13

    iget-wide v13, v8, Lio/realm/V;->m:J

    move-wide/from16 v15, v19

    const/16 v19, 0x0

    move-wide/from16 v24, v15

    move-wide v15, v13

    move-wide/from16 v13, v24

    invoke-static/range {v13 .. v19}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_2e
    invoke-virtual {v5}, Lib/player/models/EPGChannel;->realmGet$custom_sid()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_3a

    move-wide v15, v13

    iget-wide v13, v8, Lio/realm/V;->n:J

    const/16 v20, 0x0

    move-wide/from16 v24, v15

    move-wide v15, v13

    move-wide/from16 v13, v24

    invoke-static/range {v13 .. v20}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_2f

    :cond_3a
    move-wide/from16 v19, v13

    iget-wide v13, v8, Lio/realm/V;->n:J

    move-wide/from16 v15, v19

    const/16 v19, 0x0

    move-wide/from16 v24, v15

    move-wide v15, v13

    move-wide/from16 v13, v24

    invoke-static/range {v13 .. v19}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_2f
    invoke-virtual {v5}, Lib/player/models/EPGChannel;->realmGet$tv_archive()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_3b

    move-wide v15, v13

    iget-wide v13, v8, Lio/realm/V;->o:J

    const/16 v20, 0x0

    move-wide/from16 v24, v15

    move-wide v15, v13

    move-wide/from16 v13, v24

    invoke-static/range {v13 .. v20}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_30

    :cond_3b
    move-wide/from16 v19, v13

    iget-wide v13, v8, Lio/realm/V;->o:J

    move-wide/from16 v15, v19

    const/16 v19, 0x0

    move-wide/from16 v24, v15

    move-wide v15, v13

    move-wide/from16 v13, v24

    invoke-static/range {v13 .. v19}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_30
    invoke-virtual {v5}, Lib/player/models/EPGChannel;->realmGet$direct_source()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_3c

    move-wide v15, v13

    iget-wide v13, v8, Lio/realm/V;->p:J

    const/16 v20, 0x0

    move-wide/from16 v24, v15

    move-wide v15, v13

    move-wide/from16 v13, v24

    invoke-static/range {v13 .. v20}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_31

    :cond_3c
    move-wide/from16 v19, v13

    iget-wide v13, v8, Lio/realm/V;->p:J

    move-wide/from16 v15, v19

    const/16 v19, 0x0

    move-wide/from16 v24, v15

    move-wide v15, v13

    move-wide/from16 v13, v24

    invoke-static/range {v13 .. v19}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_31
    invoke-virtual {v5}, Lib/player/models/EPGChannel;->realmGet$tv_archive_duration()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_3d

    move-wide v15, v13

    iget-wide v13, v8, Lio/realm/V;->q:J

    const/16 v20, 0x0

    move-wide/from16 v24, v15

    move-wide v15, v13

    move-wide/from16 v13, v24

    invoke-static/range {v13 .. v20}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_32

    :cond_3d
    move-wide/from16 v19, v13

    iget-wide v13, v8, Lio/realm/V;->q:J

    move-wide/from16 v15, v19

    const/16 v19, 0x0

    move-wide/from16 v24, v15

    move-wide v15, v13

    move-wide/from16 v13, v24

    invoke-static/range {v13 .. v19}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_32
    invoke-virtual {v5}, Lib/player/models/EPGChannel;->realmGet$url()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_3e

    move-wide v15, v13

    iget-wide v13, v8, Lio/realm/V;->r:J

    const/16 v20, 0x0

    move-wide/from16 v24, v15

    move-wide v15, v13

    move-wide/from16 v13, v24

    invoke-static/range {v13 .. v20}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_33

    :cond_3e
    move-wide/from16 v19, v13

    iget-wide v13, v8, Lio/realm/V;->r:J

    move-wide/from16 v15, v19

    const/16 v19, 0x0

    move-wide/from16 v24, v15

    move-wide v15, v13

    move-wide/from16 v13, v24

    invoke-static/range {v13 .. v19}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_33
    invoke-virtual {v5}, Lib/player/models/EPGChannel;->realmGet$category_name()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_3f

    move-wide v15, v13

    iget-wide v13, v8, Lio/realm/V;->s:J

    const/16 v20, 0x0

    move-wide/from16 v24, v15

    move-wide v15, v13

    move-wide/from16 v13, v24

    invoke-static/range {v13 .. v20}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    :goto_34
    move-wide/from16 v19, v13

    goto :goto_35

    :cond_3f
    move-wide/from16 v19, v13

    iget-wide v13, v8, Lio/realm/V;->s:J

    move-wide/from16 v15, v19

    const/16 v19, 0x0

    move-wide/from16 v24, v15

    move-wide v15, v13

    move-wide/from16 v13, v24

    invoke-static/range {v13 .. v19}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    goto :goto_34

    :goto_35
    iget-wide v13, v8, Lio/realm/V;->t:J

    move-wide/from16 v15, v19

    invoke-virtual {v5}, Lib/player/models/EPGChannel;->realmGet$is_locked()Z

    move-result v19

    const/16 v20, 0x0

    move-wide/from16 v24, v15

    move-wide v15, v13

    move-wide/from16 v13, v24

    invoke-static/range {v13 .. v20}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    move-wide/from16 v19, v13

    iget-wide v13, v8, Lio/realm/V;->u:J

    move-wide/from16 v15, v19

    invoke-virtual {v5}, Lib/player/models/EPGChannel;->realmGet$is_favorite()Z

    move-result v19

    const/16 v20, 0x0

    move-wide/from16 v24, v15

    move-wide v15, v13

    move-wide/from16 v13, v24

    invoke-static/range {v13 .. v20}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    move-wide/from16 v19, v13

    iget-wide v13, v8, Lio/realm/V;->v:J

    move-wide/from16 v15, v19

    invoke-virtual {v5}, Lib/player/models/EPGChannel;->realmGet$is_recent()Z

    move-result v19

    const/16 v20, 0x0

    move-wide/from16 v24, v15

    move-wide v15, v13

    move-wide/from16 v13, v24

    invoke-static/range {v13 .. v20}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    move-wide/from16 v19, v13

    iget-wide v13, v8, Lio/realm/V;->w:J

    move-wide/from16 v15, v19

    invoke-virtual {v5}, Lib/player/models/EPGChannel;->realmGet$recent_pos()J

    move-result-wide v19

    const/16 v21, 0x0

    move-wide/from16 v24, v15

    move-wide v15, v13

    move-wide/from16 v13, v24

    invoke-static/range {v13 .. v21}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    move-wide/from16 v19, v13

    iget-wide v13, v8, Lio/realm/V;->x:J

    invoke-virtual {v5}, Lib/player/models/EPGChannel;->realmGet$cell()I

    move-result v15

    move-wide/from16 v21, v13

    int-to-long v13, v15

    move-wide/from16 v15, v21

    const/16 v21, 0x0

    move-wide/from16 v24, v19

    move-wide/from16 v19, v13

    move-wide/from16 v13, v24

    invoke-static/range {v13 .. v21}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    move-wide/from16 v19, v13

    iget-wide v13, v8, Lio/realm/V;->y:J

    invoke-virtual {v5}, Lib/player/models/EPGChannel;->realmGet$channelID()I

    move-result v5

    move-wide v15, v13

    int-to-long v13, v5

    move-wide/from16 v24, v19

    move-wide/from16 v19, v13

    move-wide/from16 v13, v24

    invoke-static/range {v13 .. v21}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    :goto_36
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_75

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_53

    sget-object v0, Lio/realm/e0;->r:Lio/realm/internal/OsObjectSchemaInfo;

    invoke-virtual {v2, v7}, Lio/realm/k;->b(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v0

    iget-wide v8, v0, Lio/realm/internal/Table;->b:J

    invoke-virtual {v2, v7}, Lio/realm/k;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object v2

    check-cast v2, Lio/realm/d0;

    :goto_37
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_75

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lib/player/models/SeriesModel;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_40

    goto :goto_37

    :cond_40
    instance-of v6, v5, Lio/realm/internal/y;

    if-eqz v6, :cond_41

    invoke-static {v5}, Lio/realm/O;->isFrozen(Lio/realm/M;)Z

    move-result v6

    if-nez v6, :cond_41

    move-object v6, v5

    check-cast v6, Lio/realm/internal/y;

    invoke-interface {v6}, Lio/realm/internal/y;->b()Lio/realm/v;

    move-result-object v7

    iget-object v7, v7, Lio/realm/v;->e:Lio/realm/d;

    if-eqz v7, :cond_41

    invoke-interface {v6}, Lio/realm/internal/y;->b()Lio/realm/v;

    move-result-object v7

    iget-object v7, v7, Lio/realm/v;->e:Lio/realm/d;

    iget-object v7, v7, Lio/realm/d;->r:Lio/realm/J;

    iget-object v7, v7, Lio/realm/J;->c:Ljava/lang/String;

    iget-object v10, v1, Lio/realm/J;->c:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_41

    invoke-interface {v6}, Lio/realm/internal/y;->b()Lio/realm/v;

    move-result-object v6

    iget-object v6, v6, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v6}, Lio/realm/internal/A;->F()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_37

    :cond_41
    invoke-static {v0}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Lib/player/models/SeriesModel;->realmGet$tmdb()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_42

    iget-wide v10, v2, Lio/realm/d0;->e:J

    const/4 v15, 0x0

    invoke-static/range {v8 .. v15}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_38

    :cond_42
    iget-wide v10, v2, Lio/realm/d0;->e:J

    const/4 v14, 0x0

    invoke-static/range {v8 .. v14}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_38
    iget-wide v10, v2, Lio/realm/d0;->f:J

    invoke-virtual {v5}, Lib/player/models/SeriesModel;->realmGet$num()I

    move-result v6

    int-to-long v14, v6

    const/16 v16, 0x0

    invoke-static/range {v8 .. v16}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    invoke-virtual {v5}, Lib/player/models/SeriesModel;->realmGet$name()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_43

    iget-wide v10, v2, Lio/realm/d0;->g:J

    const/4 v15, 0x0

    invoke-static/range {v8 .. v15}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_39

    :cond_43
    iget-wide v10, v2, Lio/realm/d0;->g:J

    const/4 v14, 0x0

    invoke-static/range {v8 .. v14}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_39
    invoke-virtual {v5}, Lib/player/models/SeriesModel;->realmGet$stream_type()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_44

    iget-wide v10, v2, Lio/realm/d0;->h:J

    const/4 v15, 0x0

    invoke-static/range {v8 .. v15}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_3a

    :cond_44
    iget-wide v10, v2, Lio/realm/d0;->h:J

    const/4 v14, 0x0

    invoke-static/range {v8 .. v14}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_3a
    invoke-virtual {v5}, Lib/player/models/SeriesModel;->realmGet$series_id()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_45

    iget-wide v10, v2, Lio/realm/d0;->i:J

    const/4 v15, 0x0

    invoke-static/range {v8 .. v15}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_3b

    :cond_45
    iget-wide v10, v2, Lio/realm/d0;->i:J

    const/4 v14, 0x0

    invoke-static/range {v8 .. v14}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_3b
    invoke-virtual {v5}, Lib/player/models/SeriesModel;->realmGet$stream_icon()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_46

    iget-wide v10, v2, Lio/realm/d0;->j:J

    const/4 v15, 0x0

    invoke-static/range {v8 .. v15}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_3c

    :cond_46
    iget-wide v10, v2, Lio/realm/d0;->j:J

    const/4 v14, 0x0

    invoke-static/range {v8 .. v14}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_3c
    invoke-virtual {v5}, Lib/player/models/SeriesModel;->realmGet$youtube()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_47

    iget-wide v10, v2, Lio/realm/d0;->k:J

    const/4 v15, 0x0

    invoke-static/range {v8 .. v15}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_3d

    :cond_47
    iget-wide v10, v2, Lio/realm/d0;->k:J

    const/4 v14, 0x0

    invoke-static/range {v8 .. v14}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_3d
    invoke-virtual {v5}, Lib/player/models/SeriesModel;->realmGet$plot()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_48

    iget-wide v10, v2, Lio/realm/d0;->l:J

    const/4 v15, 0x0

    invoke-static/range {v8 .. v15}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_3e

    :cond_48
    iget-wide v10, v2, Lio/realm/d0;->l:J

    const/4 v14, 0x0

    invoke-static/range {v8 .. v14}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_3e
    invoke-virtual {v5}, Lib/player/models/SeriesModel;->realmGet$cast()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_49

    iget-wide v10, v2, Lio/realm/d0;->m:J

    const/4 v15, 0x0

    invoke-static/range {v8 .. v15}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_3f

    :cond_49
    iget-wide v10, v2, Lio/realm/d0;->m:J

    const/4 v14, 0x0

    invoke-static/range {v8 .. v14}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_3f
    invoke-virtual {v5}, Lib/player/models/SeriesModel;->realmGet$director()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_4a

    iget-wide v10, v2, Lio/realm/d0;->n:J

    const/4 v15, 0x0

    invoke-static/range {v8 .. v15}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_40

    :cond_4a
    iget-wide v10, v2, Lio/realm/d0;->n:J

    const/4 v14, 0x0

    invoke-static/range {v8 .. v14}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_40
    invoke-virtual {v5}, Lib/player/models/SeriesModel;->realmGet$genre()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_4b

    iget-wide v10, v2, Lio/realm/d0;->o:J

    const/4 v15, 0x0

    invoke-static/range {v8 .. v15}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_41

    :cond_4b
    iget-wide v10, v2, Lio/realm/d0;->o:J

    const/4 v14, 0x0

    invoke-static/range {v8 .. v14}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_41
    invoke-virtual {v5}, Lib/player/models/SeriesModel;->realmGet$releaseDate()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_4c

    iget-wide v10, v2, Lio/realm/d0;->p:J

    const/4 v15, 0x0

    invoke-static/range {v8 .. v15}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_42

    :cond_4c
    iget-wide v10, v2, Lio/realm/d0;->p:J

    const/4 v14, 0x0

    invoke-static/range {v8 .. v14}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_42
    invoke-virtual {v5}, Lib/player/models/SeriesModel;->realmGet$rating()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_4d

    iget-wide v10, v2, Lio/realm/d0;->q:J

    const/4 v15, 0x0

    invoke-static/range {v8 .. v15}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_43

    :cond_4d
    iget-wide v10, v2, Lio/realm/d0;->q:J

    const/4 v14, 0x0

    invoke-static/range {v8 .. v14}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_43
    iget-wide v10, v2, Lio/realm/d0;->r:J

    invoke-virtual {v5}, Lib/player/models/SeriesModel;->realmGet$rating_5based()F

    move-result v14

    const/4 v15, 0x0

    invoke-static/range {v8 .. v15}, Lio/realm/internal/Table;->nativeSetFloat(JJJFZ)V

    invoke-virtual {v5}, Lib/player/models/SeriesModel;->realmGet$category_id()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_4e

    iget-wide v10, v2, Lio/realm/d0;->s:J

    const/4 v15, 0x0

    invoke-static/range {v8 .. v15}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_44

    :cond_4e
    iget-wide v10, v2, Lio/realm/d0;->s:J

    const/4 v14, 0x0

    invoke-static/range {v8 .. v14}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_44
    invoke-virtual {v5}, Lib/player/models/SeriesModel;->realmGet$age()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_4f

    iget-wide v10, v2, Lio/realm/d0;->t:J

    const/4 v15, 0x0

    invoke-static/range {v8 .. v15}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_45

    :cond_4f
    iget-wide v10, v2, Lio/realm/d0;->t:J

    const/4 v14, 0x0

    invoke-static/range {v8 .. v14}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_45
    invoke-virtual {v5}, Lib/player/models/SeriesModel;->realmGet$last_modified()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_50

    iget-wide v10, v2, Lio/realm/d0;->u:J

    const/4 v15, 0x0

    invoke-static/range {v8 .. v15}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_46

    :cond_50
    iget-wide v10, v2, Lio/realm/d0;->u:J

    const/4 v14, 0x0

    invoke-static/range {v8 .. v14}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_46
    iget-wide v10, v2, Lio/realm/d0;->v:J

    invoke-virtual {v5}, Lib/player/models/SeriesModel;->realmGet$season_pos()I

    move-result v6

    int-to-long v14, v6

    const/16 v16, 0x0

    invoke-static/range {v8 .. v16}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    iget-wide v10, v2, Lio/realm/d0;->w:J

    invoke-virtual {v5}, Lib/player/models/SeriesModel;->realmGet$episode_pos()I

    move-result v6

    int-to-long v14, v6

    invoke-static/range {v8 .. v16}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    iget-wide v10, v2, Lio/realm/d0;->x:J

    invoke-virtual {v5}, Lib/player/models/SeriesModel;->realmGet$is_watched()Z

    move-result v14

    const/4 v15, 0x0

    invoke-static/range {v8 .. v15}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    iget-wide v10, v2, Lio/realm/d0;->y:J

    invoke-virtual {v5}, Lib/player/models/SeriesModel;->realmGet$is_favorite()Z

    move-result v14

    invoke-static/range {v8 .. v15}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    iget-wide v10, v2, Lio/realm/d0;->z:J

    invoke-virtual {v5}, Lib/player/models/SeriesModel;->realmGet$is_recent()Z

    move-result v14

    invoke-static/range {v8 .. v15}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    invoke-virtual {v5}, Lib/player/models/SeriesModel;->realmGet$category_name()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_51

    iget-wide v10, v2, Lio/realm/d0;->A:J

    const/4 v15, 0x0

    invoke-static/range {v8 .. v15}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_47

    :cond_51
    iget-wide v10, v2, Lio/realm/d0;->A:J

    const/4 v14, 0x0

    invoke-static/range {v8 .. v14}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_47
    invoke-virtual {v5}, Lib/player/models/SeriesModel;->realmGet$url()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_52

    iget-wide v10, v2, Lio/realm/d0;->B:J

    const/4 v15, 0x0

    invoke-static/range {v8 .. v15}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto/16 :goto_37

    :cond_52
    iget-wide v10, v2, Lio/realm/d0;->B:J

    const/4 v14, 0x0

    invoke-static/range {v8 .. v14}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    goto/16 :goto_37

    :cond_53
    invoke-virtual {v6, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_63

    sget-object v0, Lio/realm/c0;->r:Lio/realm/internal/OsObjectSchemaInfo;

    invoke-virtual {v2, v12}, Lio/realm/k;->b(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v0

    iget-wide v13, v0, Lio/realm/internal/Table;->b:J

    invoke-virtual {v2, v12}, Lio/realm/k;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object v2

    check-cast v2, Lio/realm/b0;

    :goto_48
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_75

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Lib/player/models/MovieModel;

    invoke-virtual {v4, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_54

    goto :goto_48

    :cond_54
    instance-of v5, v12, Lio/realm/internal/y;

    if-eqz v5, :cond_55

    invoke-static {v12}, Lio/realm/O;->isFrozen(Lio/realm/M;)Z

    move-result v5

    if-nez v5, :cond_55

    move-object v5, v12

    check-cast v5, Lio/realm/internal/y;

    invoke-interface {v5}, Lio/realm/internal/y;->b()Lio/realm/v;

    move-result-object v6

    iget-object v6, v6, Lio/realm/v;->e:Lio/realm/d;

    if-eqz v6, :cond_55

    invoke-interface {v5}, Lio/realm/internal/y;->b()Lio/realm/v;

    move-result-object v6

    iget-object v6, v6, Lio/realm/v;->e:Lio/realm/d;

    iget-object v6, v6, Lio/realm/d;->r:Lio/realm/J;

    iget-object v6, v6, Lio/realm/J;->c:Ljava/lang/String;

    iget-object v7, v1, Lio/realm/J;->c:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_55

    invoke-interface {v5}, Lio/realm/internal/y;->b()Lio/realm/v;

    move-result-object v5

    iget-object v5, v5, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v5}, Lio/realm/internal/A;->F()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v12, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_48

    :cond_55
    invoke-static {v0}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v12, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v5, v2, Lio/realm/b0;->e:J

    invoke-virtual {v12}, Lib/player/models/MovieModel;->realmGet$num()I

    move-result v7

    int-to-long v7, v7

    const/16 v21, 0x0

    move-wide v15, v5

    move-wide/from16 v19, v7

    invoke-static/range {v13 .. v21}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    invoke-virtual {v12}, Lib/player/models/MovieModel;->realmGet$name()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_56

    iget-wide v5, v2, Lio/realm/b0;->f:J

    const/16 v20, 0x0

    move-wide v15, v5

    invoke-static/range {v13 .. v20}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_49

    :cond_56
    iget-wide v7, v2, Lio/realm/b0;->f:J

    const/4 v11, 0x0

    move-wide v5, v13

    move-wide/from16 v9, v17

    invoke-static/range {v5 .. v11}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_49
    invoke-virtual {v12}, Lib/player/models/MovieModel;->realmGet$stream_type()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_57

    iget-wide v5, v2, Lio/realm/b0;->g:J

    const/16 v20, 0x0

    move-wide v15, v5

    invoke-static/range {v13 .. v20}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_4a

    :cond_57
    iget-wide v7, v2, Lio/realm/b0;->g:J

    const/4 v11, 0x0

    move-wide v5, v13

    move-wide/from16 v9, v17

    invoke-static/range {v5 .. v11}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_4a
    invoke-virtual {v12}, Lib/player/models/MovieModel;->realmGet$stream_id()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_58

    iget-wide v5, v2, Lio/realm/b0;->h:J

    const/16 v20, 0x0

    move-wide v15, v5

    invoke-static/range {v13 .. v20}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_4b

    :cond_58
    iget-wide v7, v2, Lio/realm/b0;->h:J

    const/4 v11, 0x0

    move-wide v5, v13

    move-wide/from16 v9, v17

    invoke-static/range {v5 .. v11}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_4b
    invoke-virtual {v12}, Lib/player/models/MovieModel;->realmGet$stream_icon()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_59

    iget-wide v5, v2, Lio/realm/b0;->i:J

    const/16 v20, 0x0

    move-wide v15, v5

    invoke-static/range {v13 .. v20}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_4c

    :cond_59
    iget-wide v7, v2, Lio/realm/b0;->i:J

    const/4 v11, 0x0

    move-wide v5, v13

    move-wide/from16 v9, v17

    invoke-static/range {v5 .. v11}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_4c
    invoke-virtual {v12}, Lib/player/models/MovieModel;->realmGet$extension()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_5a

    iget-wide v5, v2, Lio/realm/b0;->j:J

    const/16 v20, 0x0

    move-wide v15, v5

    invoke-static/range {v13 .. v20}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_4d

    :cond_5a
    iget-wide v7, v2, Lio/realm/b0;->j:J

    const/4 v11, 0x0

    move-wide v5, v13

    move-wide/from16 v9, v17

    invoke-static/range {v5 .. v11}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_4d
    invoke-virtual {v12}, Lib/player/models/MovieModel;->realmGet$type()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_5b

    iget-wide v5, v2, Lio/realm/b0;->k:J

    const/16 v20, 0x0

    move-wide v15, v5

    invoke-static/range {v13 .. v20}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_4e

    :cond_5b
    iget-wide v7, v2, Lio/realm/b0;->k:J

    const/4 v11, 0x0

    move-wide v5, v13

    move-wide/from16 v9, v17

    invoke-static/range {v5 .. v11}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_4e
    invoke-virtual {v12}, Lib/player/models/MovieModel;->realmGet$rating()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_5c

    iget-wide v5, v2, Lio/realm/b0;->l:J

    const/16 v20, 0x0

    move-wide v15, v5

    invoke-static/range {v13 .. v20}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_4f

    :cond_5c
    iget-wide v7, v2, Lio/realm/b0;->l:J

    const/4 v11, 0x0

    move-wide v5, v13

    move-wide/from16 v9, v17

    invoke-static/range {v5 .. v11}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_4f
    invoke-virtual {v12}, Lib/player/models/MovieModel;->realmGet$category_id()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_5d

    iget-wide v5, v2, Lio/realm/b0;->m:J

    const/16 v20, 0x0

    move-wide v15, v5

    invoke-static/range {v13 .. v20}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_50

    :cond_5d
    iget-wide v7, v2, Lio/realm/b0;->m:J

    const/4 v11, 0x0

    move-wide v5, v13

    move-wide/from16 v9, v17

    invoke-static/range {v5 .. v11}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_50
    invoke-virtual {v12}, Lib/player/models/MovieModel;->realmGet$custom_sid()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_5e

    iget-wide v5, v2, Lio/realm/b0;->n:J

    const/16 v20, 0x0

    move-wide v15, v5

    invoke-static/range {v13 .. v20}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_51

    :cond_5e
    iget-wide v7, v2, Lio/realm/b0;->n:J

    const/4 v11, 0x0

    move-wide v5, v13

    move-wide/from16 v9, v17

    invoke-static/range {v5 .. v11}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_51
    invoke-virtual {v12}, Lib/player/models/MovieModel;->realmGet$added()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_5f

    iget-wide v5, v2, Lio/realm/b0;->o:J

    const/16 v20, 0x0

    move-wide v15, v5

    invoke-static/range {v13 .. v20}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_52

    :cond_5f
    iget-wide v7, v2, Lio/realm/b0;->o:J

    const/4 v11, 0x0

    move-wide v5, v13

    move-wide/from16 v9, v17

    invoke-static/range {v5 .. v11}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_52
    invoke-virtual {v12}, Lib/player/models/MovieModel;->realmGet$tmdb_id()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_60

    iget-wide v5, v2, Lio/realm/b0;->p:J

    const/16 v20, 0x0

    move-wide v15, v5

    invoke-static/range {v13 .. v20}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_53

    :cond_60
    iget-wide v7, v2, Lio/realm/b0;->p:J

    const/4 v11, 0x0

    move-wide v5, v13

    move-wide/from16 v9, v17

    invoke-static/range {v5 .. v11}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_53
    iget-wide v5, v2, Lio/realm/b0;->q:J

    invoke-virtual {v12}, Lib/player/models/MovieModel;->realmGet$pro()I

    move-result v7

    int-to-long v7, v7

    const/16 v21, 0x0

    move-wide v15, v5

    move-wide/from16 v19, v7

    invoke-static/range {v13 .. v21}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    iget-wide v5, v2, Lio/realm/b0;->r:J

    invoke-virtual {v12}, Lib/player/models/MovieModel;->realmGet$time()J

    move-result-wide v19

    move-wide v15, v5

    invoke-static/range {v13 .. v21}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    iget-wide v5, v2, Lio/realm/b0;->s:J

    invoke-virtual {v12}, Lib/player/models/MovieModel;->realmGet$recent_mil()J

    move-result-wide v19

    move-wide v15, v5

    invoke-static/range {v13 .. v21}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    iget-wide v5, v2, Lio/realm/b0;->t:J

    invoke-virtual {v12}, Lib/player/models/MovieModel;->realmGet$is_locked()Z

    move-result v19

    const/16 v20, 0x0

    move-wide v15, v5

    invoke-static/range {v13 .. v20}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    iget-wide v5, v2, Lio/realm/b0;->u:J

    invoke-virtual {v12}, Lib/player/models/MovieModel;->realmGet$is_favorite()Z

    move-result v19

    move-wide v15, v5

    invoke-static/range {v13 .. v20}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    iget-wide v5, v2, Lio/realm/b0;->v:J

    invoke-virtual {v12}, Lib/player/models/MovieModel;->realmGet$is_recent()Z

    move-result v19

    move-wide v15, v5

    invoke-static/range {v13 .. v20}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    invoke-virtual {v12}, Lib/player/models/MovieModel;->realmGet$category_name()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_61

    iget-wide v5, v2, Lio/realm/b0;->w:J

    const/16 v20, 0x0

    move-wide v15, v5

    invoke-static/range {v13 .. v20}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_54

    :cond_61
    iget-wide v7, v2, Lio/realm/b0;->w:J

    const/4 v11, 0x0

    move-wide v5, v13

    move-wide/from16 v9, v17

    invoke-static/range {v5 .. v11}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_54
    invoke-virtual {v12}, Lib/player/models/MovieModel;->realmGet$url()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_62

    iget-wide v5, v2, Lio/realm/b0;->x:J

    const/16 v20, 0x0

    move-wide v15, v5

    invoke-static/range {v13 .. v20}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto/16 :goto_48

    :cond_62
    iget-wide v7, v2, Lio/realm/b0;->x:J

    const/4 v11, 0x0

    move-wide v5, v13

    move-wide/from16 v9, v17

    invoke-static/range {v5 .. v11}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    goto/16 :goto_48

    :cond_63
    invoke-virtual {v6, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_71

    sget-object v5, Lio/realm/a0;->r:Lio/realm/internal/OsObjectSchemaInfo;

    invoke-virtual {v2, v11}, Lio/realm/k;->b(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v5

    iget-wide v12, v5, Lio/realm/internal/Table;->b:J

    invoke-virtual {v2, v11}, Lio/realm/k;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object v2

    check-cast v2, Lio/realm/Z;

    :goto_55
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_75

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lib/player/models/EpisodeModel;

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_64

    goto :goto_55

    :cond_64
    instance-of v7, v6, Lio/realm/internal/y;

    if-eqz v7, :cond_65

    invoke-static {v6}, Lio/realm/O;->isFrozen(Lio/realm/M;)Z

    move-result v7

    if-nez v7, :cond_65

    move-object v7, v6

    check-cast v7, Lio/realm/internal/y;

    invoke-interface {v7}, Lio/realm/internal/y;->b()Lio/realm/v;

    move-result-object v8

    iget-object v8, v8, Lio/realm/v;->e:Lio/realm/d;

    if-eqz v8, :cond_65

    invoke-interface {v7}, Lio/realm/internal/y;->b()Lio/realm/v;

    move-result-object v8

    iget-object v8, v8, Lio/realm/v;->e:Lio/realm/d;

    iget-object v8, v8, Lio/realm/d;->r:Lio/realm/J;

    iget-object v8, v8, Lio/realm/J;->c:Ljava/lang/String;

    iget-object v9, v1, Lio/realm/J;->c:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_65

    invoke-interface {v7}, Lio/realm/internal/y;->b()Lio/realm/v;

    move-result-object v7

    iget-object v7, v7, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v7}, Lio/realm/internal/A;->F()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_55

    :cond_65
    invoke-static {v5}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6}, Lib/player/models/EpisodeModel;->realmGet$id()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_66

    iget-wide v14, v2, Lio/realm/Z;->e:J

    const/16 v19, 0x0

    invoke-static/range {v12 .. v19}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_56

    :cond_66
    iget-wide v14, v2, Lio/realm/Z;->e:J

    const/16 v18, 0x0

    invoke-static/range {v12 .. v18}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_56
    invoke-virtual {v6}, Lib/player/models/EpisodeModel;->realmGet$episode_num()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_67

    iget-wide v14, v2, Lio/realm/Z;->f:J

    const/16 v19, 0x0

    invoke-static/range {v12 .. v19}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_57

    :cond_67
    iget-wide v14, v2, Lio/realm/Z;->f:J

    const/16 v18, 0x0

    invoke-static/range {v12 .. v18}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_57
    invoke-virtual {v6}, Lib/player/models/EpisodeModel;->realmGet$title()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_68

    iget-wide v14, v2, Lio/realm/Z;->g:J

    const/16 v19, 0x0

    invoke-static/range {v12 .. v19}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_58

    :cond_68
    iget-wide v14, v2, Lio/realm/Z;->g:J

    const/16 v18, 0x0

    invoke-static/range {v12 .. v18}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_58
    invoke-virtual {v6}, Lib/player/models/EpisodeModel;->realmGet$container_extension()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_69

    iget-wide v14, v2, Lio/realm/Z;->h:J

    const/16 v19, 0x0

    invoke-static/range {v12 .. v19}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_59

    :cond_69
    iget-wide v14, v2, Lio/realm/Z;->h:J

    const/16 v18, 0x0

    invoke-static/range {v12 .. v18}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_59
    iget-wide v14, v2, Lio/realm/Z;->i:J

    invoke-virtual {v6}, Lib/player/models/EpisodeModel;->realmGet$season()I

    move-result v7

    int-to-long v7, v7

    const/16 v20, 0x0

    move-wide/from16 v18, v7

    invoke-static/range {v12 .. v20}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    invoke-virtual {v6}, Lib/player/models/EpisodeModel;->realmGet$info_model()Lib/player/models/EpisodeInfoModel;

    move-result-object v7

    if-eqz v7, :cond_6b

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    if-nez v8, :cond_6a

    invoke-static {v0, v7, v4}, Lio/realm/Y;->d(Lio/realm/y;Lib/player/models/EpisodeInfoModel;Ljava/util/HashMap;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    :cond_6a
    iget-wide v14, v2, Lio/realm/Z;->j:J

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    const/16 v20, 0x0

    invoke-static/range {v12 .. v20}, Lio/realm/internal/Table;->nativeSetLink(JJJJZ)V

    goto :goto_5a

    :cond_6b
    iget-wide v14, v2, Lio/realm/Z;->j:J

    invoke-static/range {v12 .. v17}, Lio/realm/internal/Table;->nativeNullifyLink(JJJ)V

    :goto_5a
    invoke-virtual {v6}, Lib/player/models/EpisodeModel;->realmGet$category_name()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_6c

    iget-wide v14, v2, Lio/realm/Z;->k:J

    const/16 v19, 0x0

    invoke-static/range {v12 .. v19}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_5b

    :cond_6c
    iget-wide v14, v2, Lio/realm/Z;->k:J

    const/16 v18, 0x0

    invoke-static/range {v12 .. v18}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_5b
    invoke-virtual {v6}, Lib/player/models/EpisodeModel;->realmGet$stream_icon()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_6d

    iget-wide v14, v2, Lio/realm/Z;->l:J

    const/16 v19, 0x0

    invoke-static/range {v12 .. v19}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_5c

    :cond_6d
    iget-wide v14, v2, Lio/realm/Z;->l:J

    const/16 v18, 0x0

    invoke-static/range {v12 .. v18}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_5c
    invoke-virtual {v6}, Lib/player/models/EpisodeModel;->realmGet$season_name()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_6e

    iget-wide v14, v2, Lio/realm/Z;->m:J

    const/16 v19, 0x0

    invoke-static/range {v12 .. v19}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_5d

    :cond_6e
    iget-wide v14, v2, Lio/realm/Z;->m:J

    const/16 v18, 0x0

    invoke-static/range {v12 .. v18}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_5d
    invoke-virtual {v6}, Lib/player/models/EpisodeModel;->realmGet$series_name()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_6f

    iget-wide v14, v2, Lio/realm/Z;->n:J

    const/16 v19, 0x0

    invoke-static/range {v12 .. v19}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_5e

    :cond_6f
    iget-wide v14, v2, Lio/realm/Z;->n:J

    const/16 v18, 0x0

    invoke-static/range {v12 .. v18}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_5e
    invoke-virtual {v6}, Lib/player/models/EpisodeModel;->realmGet$url()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_70

    iget-wide v14, v2, Lio/realm/Z;->o:J

    const/16 v19, 0x0

    invoke-static/range {v12 .. v19}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto/16 :goto_55

    :cond_70
    iget-wide v14, v2, Lio/realm/Z;->o:J

    const/16 v18, 0x0

    invoke-static/range {v12 .. v18}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    goto/16 :goto_55

    :cond_71
    invoke-virtual {v6, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_72

    invoke-static {v0, v3, v4}, Lio/realm/Y;->e(Lio/realm/y;Ljava/util/Iterator;Ljava/util/HashMap;)V

    return-void

    :cond_72
    invoke-virtual {v6, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_73

    invoke-static {v0, v3, v4}, Lio/realm/W;->c(Lio/realm/y;Ljava/util/Iterator;Ljava/util/HashMap;)V

    return-void

    :cond_73
    invoke-static {v6}, Lio/realm/internal/z;->e(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object v0

    throw v0

    :cond_74
    invoke-static {v6}, Lio/realm/internal/z;->e(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object v0

    throw v0

    :cond_75
    return-void
.end method

.method public final j(Ljava/lang/Class;)Z
    .locals 1

    const-class v0, Lib/player/models/SeriesModel;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-class v0, Lib/player/models/MovieModel;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-class v0, Lib/player/models/EpisodeModel;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const-class v0, Lib/player/models/EpisodeInfoModel;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const-class v0, Lib/player/models/EPGChannel;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_0
    const/4 p1, 0x0

    return p1

    :cond_4
    invoke-static {p1}, Lio/realm/internal/z;->e(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object p1

    throw p1
.end method

.method public final k(Ljava/lang/Class;Ljava/lang/Object;Lio/realm/internal/A;Lio/realm/internal/c;)Lio/realm/M;
    .locals 1

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sget-object v0, Lio/realm/d;->y:LB5/c;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/c;

    :try_start_0
    check-cast p2, Lio/realm/d;

    invoke-virtual {v0, p2, p3, p4}, Lio/realm/c;->b(Lio/realm/d;Lio/realm/internal/A;Lio/realm/internal/c;)V

    if-eqz p1, :cond_5

    const-class p2, Lib/player/models/SeriesModel;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lio/realm/e0;

    invoke-direct {p2}, Lio/realm/e0;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/M;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lio/realm/c;->a()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    const-class p2, Lib/player/models/MovieModel;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Lio/realm/c0;

    invoke-direct {p2}, Lio/realm/c0;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/M;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Lio/realm/c;->a()V

    return-object p1

    :cond_1
    :try_start_2
    const-class p2, Lib/player/models/EpisodeModel;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Lio/realm/a0;

    invoke-direct {p2}, Lio/realm/a0;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/M;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v0}, Lio/realm/c;->a()V

    return-object p1

    :cond_2
    :try_start_3
    const-class p2, Lib/player/models/EpisodeInfoModel;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    new-instance p2, Lio/realm/Y;

    invoke-direct {p2}, Lio/realm/Y;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/M;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v0}, Lio/realm/c;->a()V

    return-object p1

    :cond_3
    :try_start_4
    const-class p2, Lib/player/models/EPGChannel;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    new-instance p2, Lio/realm/W;

    invoke-direct {p2}, Lio/realm/W;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/M;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {v0}, Lio/realm/c;->a()V

    return-object p1

    :cond_4
    :try_start_5
    invoke-static {p1}, Lio/realm/internal/z;->e(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object p1

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "A class extending RealmObject must be provided"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_0
    invoke-virtual {v0}, Lio/realm/c;->a()V

    throw p1
.end method

.method public final l()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
