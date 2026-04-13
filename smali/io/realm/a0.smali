.class public final Lio/realm/a0;
.super Lib/player/models/EpisodeModel;

# interfaces
.implements Lio/realm/internal/y;


# static fields
.field public static final r:Lio/realm/internal/OsObjectSchemaInfo;


# instance fields
.field public b:Lio/realm/Z;

.field public q:Lio/realm/v;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, LS2/f;

    const-string v1, "EpisodeModel"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, LS2/f;-><init>(Ljava/lang/String;I)V

    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "id"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, LS2/f;->a(Ljava/lang/String;Lio/realm/RealmFieldType;Z)V

    const-string v2, "episode_num"

    invoke-virtual {v0, v2, v1, v3}, LS2/f;->a(Ljava/lang/String;Lio/realm/RealmFieldType;Z)V

    const-string v2, "title"

    invoke-virtual {v0, v2, v1, v3}, LS2/f;->a(Ljava/lang/String;Lio/realm/RealmFieldType;Z)V

    const-string v2, "container_extension"

    invoke-virtual {v0, v2, v1, v3}, LS2/f;->a(Ljava/lang/String;Lio/realm/RealmFieldType;Z)V

    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string v4, "season"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v2, v5}, LS2/f;->a(Ljava/lang/String;Lio/realm/RealmFieldType;Z)V

    sget-object v2, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    const-string v4, "EpisodeInfoModel"

    invoke-static {v2, v3}, Lio/realm/internal/Property;->a(Lio/realm/RealmFieldType;Z)I

    move-result v2

    const-string v6, "info_model"

    const-string v7, ""

    invoke-static {v6, v7, v2, v4}, Lio/realm/internal/Property;->nativeCreatePersistedLinkProperty(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v6

    iget-object v2, v0, LS2/f;->s:Ljava/lang/Object;

    check-cast v2, [J

    iget v4, v0, LS2/f;->b:I

    aput-wide v6, v2, v4

    add-int/2addr v4, v5

    iput v4, v0, LS2/f;->b:I

    const-string v2, "category_name"

    invoke-virtual {v0, v2, v1, v3}, LS2/f;->a(Ljava/lang/String;Lio/realm/RealmFieldType;Z)V

    const-string v2, "stream_icon"

    invoke-virtual {v0, v2, v1, v3}, LS2/f;->a(Ljava/lang/String;Lio/realm/RealmFieldType;Z)V

    const-string v2, "season_name"

    invoke-virtual {v0, v2, v1, v3}, LS2/f;->a(Ljava/lang/String;Lio/realm/RealmFieldType;Z)V

    const-string v2, "series_name"

    invoke-virtual {v0, v2, v1, v3}, LS2/f;->a(Ljava/lang/String;Lio/realm/RealmFieldType;Z)V

    const-string v2, "url"

    invoke-virtual {v0, v2, v1, v3}, LS2/f;->a(Ljava/lang/String;Lio/realm/RealmFieldType;Z)V

    invoke-virtual {v0}, LS2/f;->b()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    sput-object v0, Lio/realm/a0;->r:Lio/realm/internal/OsObjectSchemaInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lib/player/models/EpisodeModel;-><init>()V

    iget-object v0, p0, Lio/realm/a0;->q:Lio/realm/v;

    invoke-virtual {v0}, Lio/realm/v;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lio/realm/a0;->q:Lio/realm/v;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lio/realm/d;->y:LB5/c;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/c;

    iget-object v1, v0, Lio/realm/c;->c:Lio/realm/internal/c;

    check-cast v1, Lio/realm/Z;

    iput-object v1, p0, Lio/realm/a0;->b:Lio/realm/Z;

    new-instance v1, Lio/realm/v;

    invoke-direct {v1, p0}, Lio/realm/v;-><init>(Lio/realm/O;)V

    iput-object v1, p0, Lio/realm/a0;->q:Lio/realm/v;

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

    iget-object v0, p0, Lio/realm/a0;->q:Lio/realm/v;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    if-ne p0, p1, :cond_0

    goto/16 :goto_0

    :cond_0
    if-eqz p1, :cond_9

    const-class v0, Lio/realm/a0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto/16 :goto_1

    :cond_1
    check-cast p1, Lio/realm/a0;

    iget-object v0, p0, Lio/realm/a0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    iget-object v1, p1, Lio/realm/a0;->q:Lio/realm/v;

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
    iget-object v0, p0, Lio/realm/a0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v0}, Lio/realm/internal/A;->d()Lio/realm/internal/Table;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/internal/Table;->k()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lio/realm/a0;->q:Lio/realm/v;

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
    iget-object v0, p0, Lio/realm/a0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v0}, Lio/realm/internal/A;->F()J

    move-result-wide v0

    iget-object p1, p1, Lio/realm/a0;->q:Lio/realm/v;

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

    iget-object v0, p0, Lio/realm/a0;->q:Lio/realm/v;

    iget-object v1, v0, Lio/realm/v;->e:Lio/realm/d;

    iget-object v1, v1, Lio/realm/d;->r:Lio/realm/J;

    iget-object v1, v1, Lio/realm/J;->c:Ljava/lang/String;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v0}, Lio/realm/internal/A;->d()Lio/realm/internal/Table;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/internal/Table;->k()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lio/realm/a0;->q:Lio/realm/v;

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

.method public final realmGet$category_name()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lio/realm/a0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v0, p0, Lio/realm/a0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/a0;->b:Lio/realm/Z;

    iget-wide v1, v1, Lio/realm/Z;->k:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/A;->A(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final realmGet$container_extension()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lio/realm/a0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v0, p0, Lio/realm/a0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/a0;->b:Lio/realm/Z;

    iget-wide v1, v1, Lio/realm/Z;->h:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/A;->A(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final realmGet$episode_num()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lio/realm/a0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v0, p0, Lio/realm/a0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/a0;->b:Lio/realm/Z;

    iget-wide v1, v1, Lio/realm/Z;->f:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/A;->A(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final realmGet$id()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lio/realm/a0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v0, p0, Lio/realm/a0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/a0;->b:Lio/realm/Z;

    iget-wide v1, v1, Lio/realm/Z;->e:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/A;->A(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final realmGet$info_model()Lib/player/models/EpisodeInfoModel;
    .locals 8

    iget-object v0, p0, Lio/realm/a0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v0, p0, Lio/realm/a0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/a0;->b:Lio/realm/Z;

    iget-wide v1, v1, Lio/realm/Z;->j:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/A;->u(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lio/realm/a0;->q:Lio/realm/v;

    iget-object v1, v0, Lio/realm/v;->e:Lio/realm/d;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v2, p0, Lio/realm/a0;->b:Lio/realm/Z;

    iget-wide v2, v2, Lio/realm/Z;->j:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/A;->y(J)J

    move-result-wide v2

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Lio/realm/d;->x()Lio/realm/k;

    move-result-object v0

    const-class v4, Lib/player/models/EpisodeInfoModel;

    invoke-virtual {v0, v4}, Lio/realm/k;->b(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v0

    iget-object v5, v0, Lio/realm/internal/Table;->q:Lio/realm/internal/g;

    sget v6, Lio/realm/internal/UncheckedRow;->t:I

    iget-wide v6, v0, Lio/realm/internal/Table;->b:J

    invoke-virtual {v0, v6, v7, v2, v3}, Lio/realm/internal/Table;->nativeGetRowPtr(JJ)J

    move-result-wide v2

    new-instance v6, Lio/realm/internal/UncheckedRow;

    invoke-direct {v6, v5, v0, v2, v3}, Lio/realm/internal/UncheckedRow;-><init>(Lio/realm/internal/g;Lio/realm/internal/Table;J)V

    iget-object v0, v1, Lio/realm/d;->r:Lio/realm/J;

    iget-object v0, v0, Lio/realm/J;->g:Lio/realm/internal/z;

    invoke-virtual {v1}, Lio/realm/d;->x()Lio/realm/k;

    move-result-object v2

    invoke-virtual {v2, v4}, Lio/realm/k;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object v2

    invoke-virtual {v0, v4, v1, v6, v2}, Lio/realm/internal/z;->k(Ljava/lang/Class;Ljava/lang/Object;Lio/realm/internal/A;Lio/realm/internal/c;)Lio/realm/M;

    move-result-object v0

    check-cast v0, Lib/player/models/EpisodeInfoModel;

    return-object v0
.end method

.method public final realmGet$season()I
    .locals 3

    iget-object v0, p0, Lio/realm/a0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v0, p0, Lio/realm/a0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/a0;->b:Lio/realm/Z;

    iget-wide v1, v1, Lio/realm/Z;->i:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/A;->j(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public final realmGet$season_name()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lio/realm/a0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v0, p0, Lio/realm/a0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/a0;->b:Lio/realm/Z;

    iget-wide v1, v1, Lio/realm/Z;->m:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/A;->A(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final realmGet$series_name()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lio/realm/a0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v0, p0, Lio/realm/a0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/a0;->b:Lio/realm/Z;

    iget-wide v1, v1, Lio/realm/Z;->n:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/A;->A(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final realmGet$stream_icon()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lio/realm/a0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v0, p0, Lio/realm/a0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/a0;->b:Lio/realm/Z;

    iget-wide v1, v1, Lio/realm/Z;->l:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/A;->A(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final realmGet$title()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lio/realm/a0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v0, p0, Lio/realm/a0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/a0;->b:Lio/realm/Z;

    iget-wide v1, v1, Lio/realm/Z;->g:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/A;->A(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final realmGet$url()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lio/realm/a0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v0, p0, Lio/realm/a0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/a0;->b:Lio/realm/Z;

    iget-wide v1, v1, Lio/realm/Z;->o:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/A;->A(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final realmSet$category_name(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lio/realm/a0;->q:Lio/realm/v;

    iget-boolean v1, v0, Lio/realm/v;->b:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    if-nez p1, :cond_1

    iget-object p1, p0, Lio/realm/a0;->q:Lio/realm/v;

    iget-object p1, p1, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v0, p0, Lio/realm/a0;->b:Lio/realm/Z;

    iget-wide v0, v0, Lio/realm/Z;->k:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/A;->v(J)V

    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/a0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/a0;->b:Lio/realm/Z;

    iget-wide v1, v1, Lio/realm/Z;->k:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/A;->b(JLjava/lang/String;)V

    return-void
.end method

.method public final realmSet$container_extension(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lio/realm/a0;->q:Lio/realm/v;

    iget-boolean v1, v0, Lio/realm/v;->b:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    if-nez p1, :cond_1

    iget-object p1, p0, Lio/realm/a0;->q:Lio/realm/v;

    iget-object p1, p1, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v0, p0, Lio/realm/a0;->b:Lio/realm/Z;

    iget-wide v0, v0, Lio/realm/Z;->h:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/A;->v(J)V

    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/a0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/a0;->b:Lio/realm/Z;

    iget-wide v1, v1, Lio/realm/Z;->h:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/A;->b(JLjava/lang/String;)V

    return-void
.end method

.method public final realmSet$episode_num(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lio/realm/a0;->q:Lio/realm/v;

    iget-boolean v1, v0, Lio/realm/v;->b:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    if-nez p1, :cond_1

    iget-object p1, p0, Lio/realm/a0;->q:Lio/realm/v;

    iget-object p1, p1, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v0, p0, Lio/realm/a0;->b:Lio/realm/Z;

    iget-wide v0, v0, Lio/realm/Z;->f:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/A;->v(J)V

    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/a0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/a0;->b:Lio/realm/Z;

    iget-wide v1, v1, Lio/realm/Z;->f:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/A;->b(JLjava/lang/String;)V

    return-void
.end method

.method public final realmSet$id(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lio/realm/a0;->q:Lio/realm/v;

    iget-boolean v1, v0, Lio/realm/v;->b:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    if-nez p1, :cond_1

    iget-object p1, p0, Lio/realm/a0;->q:Lio/realm/v;

    iget-object p1, p1, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v0, p0, Lio/realm/a0;->b:Lio/realm/Z;

    iget-wide v0, v0, Lio/realm/Z;->e:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/A;->v(J)V

    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/a0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/a0;->b:Lio/realm/Z;

    iget-wide v1, v1, Lio/realm/Z;->e:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/A;->b(JLjava/lang/String;)V

    return-void
.end method

.method public final realmSet$info_model(Lib/player/models/EpisodeInfoModel;)V
    .locals 5

    iget-object v0, p0, Lio/realm/a0;->q:Lio/realm/v;

    iget-object v1, v0, Lio/realm/v;->e:Lio/realm/d;

    move-object v2, v1

    check-cast v2, Lio/realm/y;

    iget-boolean v0, v0, Lio/realm/v;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1}, Lio/realm/d;->b()V

    if-nez p1, :cond_1

    iget-object p1, p0, Lio/realm/a0;->q:Lio/realm/v;

    iget-object p1, p1, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v0, p0, Lio/realm/a0;->b:Lio/realm/Z;

    iget-wide v0, v0, Lio/realm/Z;->j:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/A;->p(J)V

    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/a0;->q:Lio/realm/v;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lio/realm/O;->isValid(Lio/realm/M;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p1}, Lio/realm/O;->isManaged(Lio/realm/M;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v1, p1

    check-cast v1, Lio/realm/internal/y;

    invoke-interface {v1}, Lio/realm/internal/y;->b()Lio/realm/v;

    move-result-object v1

    iget-object v1, v1, Lio/realm/v;->e:Lio/realm/d;

    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    if-ne v1, v0, :cond_2

    iget-object v0, p0, Lio/realm/a0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/a0;->b:Lio/realm/Z;

    iget-wide v1, v1, Lio/realm/Z;->j:J

    check-cast p1, Lio/realm/internal/y;

    invoke-interface {p1}, Lio/realm/internal/y;->b()Lio/realm/v;

    move-result-object p1

    iget-object p1, p1, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {p1}, Lio/realm/internal/A;->F()J

    move-result-wide v3

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/A;->k(JJ)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'value\' belongs to a different Realm."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'value\' is not a valid managed object."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final realmSet$season(I)V
    .locals 5

    iget-object v0, p0, Lio/realm/a0;->q:Lio/realm/v;

    iget-boolean v1, v0, Lio/realm/v;->b:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v0, p0, Lio/realm/a0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/a0;->b:Lio/realm/Z;

    iget-wide v1, v1, Lio/realm/Z;->i:J

    int-to-long v3, p1

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/A;->m(JJ)V

    return-void
.end method

.method public final realmSet$season_name(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lio/realm/a0;->q:Lio/realm/v;

    iget-boolean v1, v0, Lio/realm/v;->b:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    if-nez p1, :cond_1

    iget-object p1, p0, Lio/realm/a0;->q:Lio/realm/v;

    iget-object p1, p1, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v0, p0, Lio/realm/a0;->b:Lio/realm/Z;

    iget-wide v0, v0, Lio/realm/Z;->m:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/A;->v(J)V

    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/a0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/a0;->b:Lio/realm/Z;

    iget-wide v1, v1, Lio/realm/Z;->m:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/A;->b(JLjava/lang/String;)V

    return-void
.end method

.method public final realmSet$series_name(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lio/realm/a0;->q:Lio/realm/v;

    iget-boolean v1, v0, Lio/realm/v;->b:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    if-nez p1, :cond_1

    iget-object p1, p0, Lio/realm/a0;->q:Lio/realm/v;

    iget-object p1, p1, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v0, p0, Lio/realm/a0;->b:Lio/realm/Z;

    iget-wide v0, v0, Lio/realm/Z;->n:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/A;->v(J)V

    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/a0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/a0;->b:Lio/realm/Z;

    iget-wide v1, v1, Lio/realm/Z;->n:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/A;->b(JLjava/lang/String;)V

    return-void
.end method

.method public final realmSet$stream_icon(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lio/realm/a0;->q:Lio/realm/v;

    iget-boolean v1, v0, Lio/realm/v;->b:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    if-nez p1, :cond_1

    iget-object p1, p0, Lio/realm/a0;->q:Lio/realm/v;

    iget-object p1, p1, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v0, p0, Lio/realm/a0;->b:Lio/realm/Z;

    iget-wide v0, v0, Lio/realm/Z;->l:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/A;->v(J)V

    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/a0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/a0;->b:Lio/realm/Z;

    iget-wide v1, v1, Lio/realm/Z;->l:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/A;->b(JLjava/lang/String;)V

    return-void
.end method

.method public final realmSet$title(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lio/realm/a0;->q:Lio/realm/v;

    iget-boolean v1, v0, Lio/realm/v;->b:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    if-nez p1, :cond_1

    iget-object p1, p0, Lio/realm/a0;->q:Lio/realm/v;

    iget-object p1, p1, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v0, p0, Lio/realm/a0;->b:Lio/realm/Z;

    iget-wide v0, v0, Lio/realm/Z;->g:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/A;->v(J)V

    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/a0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/a0;->b:Lio/realm/Z;

    iget-wide v1, v1, Lio/realm/Z;->g:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/A;->b(JLjava/lang/String;)V

    return-void
.end method

.method public final realmSet$url(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lio/realm/a0;->q:Lio/realm/v;

    iget-boolean v1, v0, Lio/realm/v;->b:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    if-nez p1, :cond_1

    iget-object p1, p0, Lio/realm/a0;->q:Lio/realm/v;

    iget-object p1, p1, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v0, p0, Lio/realm/a0;->b:Lio/realm/Z;

    iget-wide v0, v0, Lio/realm/Z;->o:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/A;->v(J)V

    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/a0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/a0;->b:Lio/realm/Z;

    iget-wide v1, v1, Lio/realm/Z;->o:J

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

    const-string v1, "EpisodeModel = proxy[{id:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/realm/a0;->realmGet$id()Ljava/lang/String;

    move-result-object v1

    const-string v2, "null"

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lio/realm/a0;->realmGet$id()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "},{episode_num:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/a0;->realmGet$episode_num()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lio/realm/a0;->realmGet$episode_num()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "},{title:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/a0;->realmGet$title()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lio/realm/a0;->realmGet$title()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    move-object v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "},{container_extension:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/a0;->realmGet$container_extension()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lio/realm/a0;->realmGet$container_extension()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_4
    move-object v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "},{season:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/a0;->realmGet$season()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "},{info_model:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/a0;->realmGet$info_model()Lib/player/models/EpisodeInfoModel;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v1, "EpisodeInfoModel"

    goto :goto_4

    :cond_5
    move-object v1, v2

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "},{category_name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/a0;->realmGet$category_name()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lio/realm/a0;->realmGet$category_name()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_6
    move-object v1, v2

    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "},{stream_icon:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/a0;->realmGet$stream_icon()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lio/realm/a0;->realmGet$stream_icon()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_7
    move-object v1, v2

    :goto_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "},{season_name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/a0;->realmGet$season_name()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lio/realm/a0;->realmGet$season_name()Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_8
    move-object v1, v2

    :goto_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "},{series_name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/a0;->realmGet$series_name()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lio/realm/a0;->realmGet$series_name()Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    :cond_9
    move-object v1, v2

    :goto_8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "},{url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/a0;->realmGet$url()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lio/realm/a0;->realmGet$url()Ljava/lang/String;

    move-result-object v2

    :cond_a
    const-string v1, "}]"

    invoke-static {v0, v2, v1}, LB/f;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
