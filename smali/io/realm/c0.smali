.class public final Lio/realm/c0;
.super Lib/player/models/MovieModel;

# interfaces
.implements Lio/realm/internal/y;


# static fields
.field public static final r:Lio/realm/internal/OsObjectSchemaInfo;


# instance fields
.field public b:Lio/realm/b0;

.field public q:Lio/realm/v;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, LS2/f;

    const-string v1, "MovieModel"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, LS2/f;-><init>(Ljava/lang/String;I)V

    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string v2, "num"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, LS2/f;->a(Ljava/lang/String;Lio/realm/RealmFieldType;Z)V

    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v4, "name"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v2, v5}, LS2/f;->a(Ljava/lang/String;Lio/realm/RealmFieldType;Z)V

    const-string v4, "stream_type"

    invoke-virtual {v0, v4, v2, v5}, LS2/f;->a(Ljava/lang/String;Lio/realm/RealmFieldType;Z)V

    const-string v4, "stream_id"

    invoke-virtual {v0, v4, v2, v5}, LS2/f;->a(Ljava/lang/String;Lio/realm/RealmFieldType;Z)V

    const-string v4, "stream_icon"

    invoke-virtual {v0, v4, v2, v5}, LS2/f;->a(Ljava/lang/String;Lio/realm/RealmFieldType;Z)V

    const-string v4, "extension"

    invoke-virtual {v0, v4, v2, v5}, LS2/f;->a(Ljava/lang/String;Lio/realm/RealmFieldType;Z)V

    const-string v4, "type"

    invoke-virtual {v0, v4, v2, v5}, LS2/f;->a(Ljava/lang/String;Lio/realm/RealmFieldType;Z)V

    const-string v4, "rating"

    invoke-virtual {v0, v4, v2, v5}, LS2/f;->a(Ljava/lang/String;Lio/realm/RealmFieldType;Z)V

    const-string v4, "category_id"

    invoke-virtual {v0, v4, v2, v5}, LS2/f;->a(Ljava/lang/String;Lio/realm/RealmFieldType;Z)V

    const-string v4, "custom_sid"

    invoke-virtual {v0, v4, v2, v5}, LS2/f;->a(Ljava/lang/String;Lio/realm/RealmFieldType;Z)V

    const-string v4, "added"

    invoke-virtual {v0, v4, v2, v5}, LS2/f;->a(Ljava/lang/String;Lio/realm/RealmFieldType;Z)V

    const-string v4, "tmdb_id"

    invoke-virtual {v0, v4, v2, v5}, LS2/f;->a(Ljava/lang/String;Lio/realm/RealmFieldType;Z)V

    const-string v4, "pro"

    invoke-virtual {v0, v4, v1, v3}, LS2/f;->a(Ljava/lang/String;Lio/realm/RealmFieldType;Z)V

    const-string v4, "time"

    invoke-virtual {v0, v4, v1, v3}, LS2/f;->a(Ljava/lang/String;Lio/realm/RealmFieldType;Z)V

    const-string v4, "recent_mil"

    invoke-virtual {v0, v4, v1, v3}, LS2/f;->a(Ljava/lang/String;Lio/realm/RealmFieldType;Z)V

    sget-object v1, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const-string v4, "is_locked"

    invoke-virtual {v0, v4, v1, v3}, LS2/f;->a(Ljava/lang/String;Lio/realm/RealmFieldType;Z)V

    const-string v4, "is_favorite"

    invoke-virtual {v0, v4, v1, v3}, LS2/f;->a(Ljava/lang/String;Lio/realm/RealmFieldType;Z)V

    const-string v4, "is_recent"

    invoke-virtual {v0, v4, v1, v3}, LS2/f;->a(Ljava/lang/String;Lio/realm/RealmFieldType;Z)V

    const-string v1, "category_name"

    invoke-virtual {v0, v1, v2, v5}, LS2/f;->a(Ljava/lang/String;Lio/realm/RealmFieldType;Z)V

    const-string v1, "url"

    invoke-virtual {v0, v1, v2, v5}, LS2/f;->a(Ljava/lang/String;Lio/realm/RealmFieldType;Z)V

    invoke-virtual {v0}, LS2/f;->b()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    sput-object v0, Lio/realm/c0;->r:Lio/realm/internal/OsObjectSchemaInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lib/player/models/MovieModel;-><init>()V

    iget-object v0, p0, Lio/realm/c0;->q:Lio/realm/v;

    invoke-virtual {v0}, Lio/realm/v;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lio/realm/c0;->q:Lio/realm/v;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lio/realm/d;->y:LB5/c;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/c;

    iget-object v1, v0, Lio/realm/c;->c:Lio/realm/internal/c;

    check-cast v1, Lio/realm/b0;

    iput-object v1, p0, Lio/realm/c0;->b:Lio/realm/b0;

    new-instance v1, Lio/realm/v;

    invoke-direct {v1, p0}, Lio/realm/v;-><init>(Lio/realm/O;)V

    iput-object v1, p0, Lio/realm/c0;->q:Lio/realm/v;

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

    iget-object v0, p0, Lio/realm/c0;->q:Lio/realm/v;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    if-ne p0, p1, :cond_0

    goto/16 :goto_0

    :cond_0
    if-eqz p1, :cond_9

    const-class v0, Lio/realm/c0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto/16 :goto_1

    :cond_1
    check-cast p1, Lio/realm/c0;

    iget-object v0, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    iget-object v1, p1, Lio/realm/c0;->q:Lio/realm/v;

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
    iget-object v0, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v0}, Lio/realm/internal/A;->d()Lio/realm/internal/Table;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/internal/Table;->k()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lio/realm/c0;->q:Lio/realm/v;

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
    iget-object v0, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v0}, Lio/realm/internal/A;->F()J

    move-result-wide v0

    iget-object p1, p1, Lio/realm/c0;->q:Lio/realm/v;

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

    iget-object v0, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-object v1, v0, Lio/realm/v;->e:Lio/realm/d;

    iget-object v1, v1, Lio/realm/d;->r:Lio/realm/J;

    iget-object v1, v1, Lio/realm/J;->c:Ljava/lang/String;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v0}, Lio/realm/internal/A;->d()Lio/realm/internal/Table;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/internal/Table;->k()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lio/realm/c0;->q:Lio/realm/v;

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

.method public final realmGet$added()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v0, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/c0;->b:Lio/realm/b0;

    iget-wide v1, v1, Lio/realm/b0;->o:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/A;->A(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final realmGet$category_id()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v0, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/c0;->b:Lio/realm/b0;

    iget-wide v1, v1, Lio/realm/b0;->m:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/A;->A(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final realmGet$category_name()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v0, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/c0;->b:Lio/realm/b0;

    iget-wide v1, v1, Lio/realm/b0;->w:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/A;->A(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final realmGet$custom_sid()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v0, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/c0;->b:Lio/realm/b0;

    iget-wide v1, v1, Lio/realm/b0;->n:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/A;->A(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final realmGet$extension()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v0, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/c0;->b:Lio/realm/b0;

    iget-wide v1, v1, Lio/realm/b0;->j:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/A;->A(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final realmGet$is_favorite()Z
    .locals 3

    iget-object v0, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v0, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/c0;->b:Lio/realm/b0;

    iget-wide v1, v1, Lio/realm/b0;->u:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/A;->i(J)Z

    move-result v0

    return v0
.end method

.method public final realmGet$is_locked()Z
    .locals 3

    iget-object v0, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v0, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/c0;->b:Lio/realm/b0;

    iget-wide v1, v1, Lio/realm/b0;->t:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/A;->i(J)Z

    move-result v0

    return v0
.end method

.method public final realmGet$is_recent()Z
    .locals 3

    iget-object v0, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v0, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/c0;->b:Lio/realm/b0;

    iget-wide v1, v1, Lio/realm/b0;->v:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/A;->i(J)Z

    move-result v0

    return v0
.end method

.method public final realmGet$name()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v0, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/c0;->b:Lio/realm/b0;

    iget-wide v1, v1, Lio/realm/b0;->f:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/A;->A(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final realmGet$num()I
    .locals 3

    iget-object v0, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v0, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/c0;->b:Lio/realm/b0;

    iget-wide v1, v1, Lio/realm/b0;->e:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/A;->j(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public final realmGet$pro()I
    .locals 3

    iget-object v0, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v0, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/c0;->b:Lio/realm/b0;

    iget-wide v1, v1, Lio/realm/b0;->q:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/A;->j(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public final realmGet$rating()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v0, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/c0;->b:Lio/realm/b0;

    iget-wide v1, v1, Lio/realm/b0;->l:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/A;->A(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final realmGet$recent_mil()J
    .locals 3

    iget-object v0, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v0, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/c0;->b:Lio/realm/b0;

    iget-wide v1, v1, Lio/realm/b0;->s:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/A;->j(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final realmGet$stream_icon()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v0, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/c0;->b:Lio/realm/b0;

    iget-wide v1, v1, Lio/realm/b0;->i:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/A;->A(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final realmGet$stream_id()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v0, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/c0;->b:Lio/realm/b0;

    iget-wide v1, v1, Lio/realm/b0;->h:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/A;->A(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final realmGet$stream_type()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v0, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/c0;->b:Lio/realm/b0;

    iget-wide v1, v1, Lio/realm/b0;->g:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/A;->A(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final realmGet$time()J
    .locals 3

    iget-object v0, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v0, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/c0;->b:Lio/realm/b0;

    iget-wide v1, v1, Lio/realm/b0;->r:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/A;->j(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final realmGet$tmdb_id()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v0, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/c0;->b:Lio/realm/b0;

    iget-wide v1, v1, Lio/realm/b0;->p:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/A;->A(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final realmGet$type()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v0, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/c0;->b:Lio/realm/b0;

    iget-wide v1, v1, Lio/realm/b0;->k:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/A;->A(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final realmGet$url()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v0, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/c0;->b:Lio/realm/b0;

    iget-wide v1, v1, Lio/realm/b0;->x:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/A;->A(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final realmSet$added(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-boolean v1, v0, Lio/realm/v;->b:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    if-nez p1, :cond_1

    iget-object p1, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-object p1, p1, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v0, p0, Lio/realm/c0;->b:Lio/realm/b0;

    iget-wide v0, v0, Lio/realm/b0;->o:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/A;->v(J)V

    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/c0;->b:Lio/realm/b0;

    iget-wide v1, v1, Lio/realm/b0;->o:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/A;->b(JLjava/lang/String;)V

    return-void
.end method

.method public final realmSet$category_id(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-boolean v1, v0, Lio/realm/v;->b:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    if-nez p1, :cond_1

    iget-object p1, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-object p1, p1, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v0, p0, Lio/realm/c0;->b:Lio/realm/b0;

    iget-wide v0, v0, Lio/realm/b0;->m:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/A;->v(J)V

    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/c0;->b:Lio/realm/b0;

    iget-wide v1, v1, Lio/realm/b0;->m:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/A;->b(JLjava/lang/String;)V

    return-void
.end method

.method public final realmSet$category_name(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-boolean v1, v0, Lio/realm/v;->b:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    if-nez p1, :cond_1

    iget-object p1, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-object p1, p1, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v0, p0, Lio/realm/c0;->b:Lio/realm/b0;

    iget-wide v0, v0, Lio/realm/b0;->w:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/A;->v(J)V

    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/c0;->b:Lio/realm/b0;

    iget-wide v1, v1, Lio/realm/b0;->w:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/A;->b(JLjava/lang/String;)V

    return-void
.end method

.method public final realmSet$custom_sid(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-boolean v1, v0, Lio/realm/v;->b:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    if-nez p1, :cond_1

    iget-object p1, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-object p1, p1, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v0, p0, Lio/realm/c0;->b:Lio/realm/b0;

    iget-wide v0, v0, Lio/realm/b0;->n:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/A;->v(J)V

    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/c0;->b:Lio/realm/b0;

    iget-wide v1, v1, Lio/realm/b0;->n:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/A;->b(JLjava/lang/String;)V

    return-void
.end method

.method public final realmSet$extension(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-boolean v1, v0, Lio/realm/v;->b:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    if-nez p1, :cond_1

    iget-object p1, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-object p1, p1, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v0, p0, Lio/realm/c0;->b:Lio/realm/b0;

    iget-wide v0, v0, Lio/realm/b0;->j:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/A;->v(J)V

    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/c0;->b:Lio/realm/b0;

    iget-wide v1, v1, Lio/realm/b0;->j:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/A;->b(JLjava/lang/String;)V

    return-void
.end method

.method public final realmSet$is_favorite(Z)V
    .locals 3

    iget-object v0, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-boolean v1, v0, Lio/realm/v;->b:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v0, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/c0;->b:Lio/realm/b0;

    iget-wide v1, v1, Lio/realm/b0;->u:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/A;->e(JZ)V

    return-void
.end method

.method public final realmSet$is_locked(Z)V
    .locals 3

    iget-object v0, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-boolean v1, v0, Lio/realm/v;->b:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v0, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/c0;->b:Lio/realm/b0;

    iget-wide v1, v1, Lio/realm/b0;->t:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/A;->e(JZ)V

    return-void
.end method

.method public final realmSet$is_recent(Z)V
    .locals 3

    iget-object v0, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-boolean v1, v0, Lio/realm/v;->b:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v0, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/c0;->b:Lio/realm/b0;

    iget-wide v1, v1, Lio/realm/b0;->v:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/A;->e(JZ)V

    return-void
.end method

.method public final realmSet$name(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-boolean v1, v0, Lio/realm/v;->b:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    if-nez p1, :cond_1

    iget-object p1, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-object p1, p1, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v0, p0, Lio/realm/c0;->b:Lio/realm/b0;

    iget-wide v0, v0, Lio/realm/b0;->f:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/A;->v(J)V

    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/c0;->b:Lio/realm/b0;

    iget-wide v1, v1, Lio/realm/b0;->f:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/A;->b(JLjava/lang/String;)V

    return-void
.end method

.method public final realmSet$num(I)V
    .locals 5

    iget-object v0, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-boolean v1, v0, Lio/realm/v;->b:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v0, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/c0;->b:Lio/realm/b0;

    iget-wide v1, v1, Lio/realm/b0;->e:J

    int-to-long v3, p1

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/A;->m(JJ)V

    return-void
.end method

.method public final realmSet$pro(I)V
    .locals 5

    iget-object v0, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-boolean v1, v0, Lio/realm/v;->b:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v0, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/c0;->b:Lio/realm/b0;

    iget-wide v1, v1, Lio/realm/b0;->q:J

    int-to-long v3, p1

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/A;->m(JJ)V

    return-void
.end method

.method public final realmSet$rating(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-boolean v1, v0, Lio/realm/v;->b:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    if-nez p1, :cond_1

    iget-object p1, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-object p1, p1, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v0, p0, Lio/realm/c0;->b:Lio/realm/b0;

    iget-wide v0, v0, Lio/realm/b0;->l:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/A;->v(J)V

    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/c0;->b:Lio/realm/b0;

    iget-wide v1, v1, Lio/realm/b0;->l:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/A;->b(JLjava/lang/String;)V

    return-void
.end method

.method public final realmSet$recent_mil(J)V
    .locals 3

    iget-object v0, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-boolean v1, v0, Lio/realm/v;->b:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v0, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/c0;->b:Lio/realm/b0;

    iget-wide v1, v1, Lio/realm/b0;->s:J

    invoke-interface {v0, v1, v2, p1, p2}, Lio/realm/internal/A;->m(JJ)V

    return-void
.end method

.method public final realmSet$stream_icon(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-boolean v1, v0, Lio/realm/v;->b:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    if-nez p1, :cond_1

    iget-object p1, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-object p1, p1, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v0, p0, Lio/realm/c0;->b:Lio/realm/b0;

    iget-wide v0, v0, Lio/realm/b0;->i:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/A;->v(J)V

    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/c0;->b:Lio/realm/b0;

    iget-wide v1, v1, Lio/realm/b0;->i:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/A;->b(JLjava/lang/String;)V

    return-void
.end method

.method public final realmSet$stream_id(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-boolean v1, v0, Lio/realm/v;->b:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    if-nez p1, :cond_1

    iget-object p1, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-object p1, p1, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v0, p0, Lio/realm/c0;->b:Lio/realm/b0;

    iget-wide v0, v0, Lio/realm/b0;->h:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/A;->v(J)V

    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/c0;->b:Lio/realm/b0;

    iget-wide v1, v1, Lio/realm/b0;->h:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/A;->b(JLjava/lang/String;)V

    return-void
.end method

.method public final realmSet$stream_type(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-boolean v1, v0, Lio/realm/v;->b:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    if-nez p1, :cond_1

    iget-object p1, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-object p1, p1, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v0, p0, Lio/realm/c0;->b:Lio/realm/b0;

    iget-wide v0, v0, Lio/realm/b0;->g:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/A;->v(J)V

    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/c0;->b:Lio/realm/b0;

    iget-wide v1, v1, Lio/realm/b0;->g:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/A;->b(JLjava/lang/String;)V

    return-void
.end method

.method public final realmSet$time(J)V
    .locals 3

    iget-object v0, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-boolean v1, v0, Lio/realm/v;->b:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v0, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/c0;->b:Lio/realm/b0;

    iget-wide v1, v1, Lio/realm/b0;->r:J

    invoke-interface {v0, v1, v2, p1, p2}, Lio/realm/internal/A;->m(JJ)V

    return-void
.end method

.method public final realmSet$tmdb_id(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-boolean v1, v0, Lio/realm/v;->b:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    if-nez p1, :cond_1

    iget-object p1, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-object p1, p1, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v0, p0, Lio/realm/c0;->b:Lio/realm/b0;

    iget-wide v0, v0, Lio/realm/b0;->p:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/A;->v(J)V

    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/c0;->b:Lio/realm/b0;

    iget-wide v1, v1, Lio/realm/b0;->p:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/A;->b(JLjava/lang/String;)V

    return-void
.end method

.method public final realmSet$type(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-boolean v1, v0, Lio/realm/v;->b:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    if-nez p1, :cond_1

    iget-object p1, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-object p1, p1, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v0, p0, Lio/realm/c0;->b:Lio/realm/b0;

    iget-wide v0, v0, Lio/realm/b0;->k:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/A;->v(J)V

    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/c0;->b:Lio/realm/b0;

    iget-wide v1, v1, Lio/realm/b0;->k:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/A;->b(JLjava/lang/String;)V

    return-void
.end method

.method public final realmSet$url(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-boolean v1, v0, Lio/realm/v;->b:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    if-nez p1, :cond_1

    iget-object p1, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-object p1, p1, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v0, p0, Lio/realm/c0;->b:Lio/realm/b0;

    iget-wide v0, v0, Lio/realm/b0;->x:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/A;->v(J)V

    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/c0;->q:Lio/realm/v;

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v1, p0, Lio/realm/c0;->b:Lio/realm/b0;

    iget-wide v1, v1, Lio/realm/b0;->x:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/A;->b(JLjava/lang/String;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    invoke-static {p0}, Lio/realm/O;->isValid(Lio/realm/M;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Invalid object"

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MovieModel = proxy[{num:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/realm/c0;->realmGet$num()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "},{name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/c0;->realmGet$name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "null"

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lio/realm/c0;->realmGet$name()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "},{stream_type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/c0;->realmGet$stream_type()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lio/realm/c0;->realmGet$stream_type()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "},{stream_id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/c0;->realmGet$stream_id()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lio/realm/c0;->realmGet$stream_id()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    move-object v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "},{stream_icon:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/c0;->realmGet$stream_icon()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lio/realm/c0;->realmGet$stream_icon()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_4
    move-object v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "},{extension:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/c0;->realmGet$extension()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lio/realm/c0;->realmGet$extension()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_5
    move-object v1, v2

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "},{type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/c0;->realmGet$type()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lio/realm/c0;->realmGet$type()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_6
    move-object v1, v2

    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "},{rating:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/c0;->realmGet$rating()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lio/realm/c0;->realmGet$rating()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_7
    move-object v1, v2

    :goto_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "},{category_id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/c0;->realmGet$category_id()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lio/realm/c0;->realmGet$category_id()Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_8
    move-object v1, v2

    :goto_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "},{custom_sid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/c0;->realmGet$custom_sid()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lio/realm/c0;->realmGet$custom_sid()Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    :cond_9
    move-object v1, v2

    :goto_8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "},{added:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/c0;->realmGet$added()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lio/realm/c0;->realmGet$added()Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    :cond_a
    move-object v1, v2

    :goto_9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "},{tmdb_id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/c0;->realmGet$tmdb_id()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {p0}, Lio/realm/c0;->realmGet$tmdb_id()Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    :cond_b
    move-object v1, v2

    :goto_a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "},{pro:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/c0;->realmGet$pro()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "},{time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/c0;->realmGet$time()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "},{recent_mil:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/c0;->realmGet$recent_mil()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "},{is_locked:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/c0;->realmGet$is_locked()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "},{is_favorite:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/c0;->realmGet$is_favorite()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "},{is_recent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/c0;->realmGet$is_recent()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "},{category_name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/c0;->realmGet$category_name()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {p0}, Lio/realm/c0;->realmGet$category_name()Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    :cond_c
    move-object v1, v2

    :goto_b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "},{url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/c0;->realmGet$url()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Lio/realm/c0;->realmGet$url()Ljava/lang/String;

    move-result-object v2

    :cond_d
    const-string v1, "}]"

    invoke-static {v0, v2, v1}, LB/f;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
