.class public final Lio/realm/f;
.super Lio/realm/d;


# instance fields
.field public final z:Lio/realm/k;


# direct methods
.method public constructor <init>(Lio/realm/G;Lio/realm/internal/t;)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lio/realm/d;-><init>(Lio/realm/G;Lio/realm/internal/OsSchemaInfo;Lio/realm/internal/t;)V

    iget-object p2, p1, Lio/realm/G;->c:Lio/realm/J;

    new-instance v1, LY1/c;

    const/16 v2, 0x12

    const/4 v3, 0x0

    invoke-direct {v1, p0, p1, v2, v3}, LY1/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    sget-object p1, Lio/realm/G;->e:Ljava/util/ArrayList;

    monitor-enter p1

    :try_start_0
    iget-object p2, p2, Lio/realm/J;->c:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p2, v2}, Lio/realm/G;->b(Ljava/lang/String;Z)Lio/realm/G;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-virtual {v1, v2}, LY1/c;->M(I)V

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :cond_0
    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p2}, Lio/realm/G;->d()I

    move-result v2

    invoke-virtual {v1, v2}, LY1/c;->M(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit p2

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    new-instance p1, Lio/realm/k;

    const/4 p2, 0x1

    invoke-direct {p1, p0, v0, p2}, Lio/realm/k;-><init>(Lio/realm/d;LK1/c;I)V

    iput-object p1, p0, Lio/realm/f;->z:Lio/realm/k;

    return-void

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0

    :goto_1
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p2
.end method


# virtual methods
.method public final h()Lio/realm/d;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lio/realm/d;->t:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->getVersionID()Lio/realm/internal/t;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, Lio/realm/d;->t:Lio/realm/internal/OsSharedRealm;

    invoke-static {v0}, Lio/realm/internal/OsObjectStore;->b(Lio/realm/internal/OsSharedRealm;)J

    iget-object v0, p0, Lio/realm/d;->t:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->getVersionID()Lio/realm/internal/t;

    move-result-object v0

    :goto_0
    sget-object v1, Lio/realm/G;->e:Ljava/util/ArrayList;

    iget-object v1, p0, Lio/realm/d;->r:Lio/realm/J;

    iget-object v2, v1, Lio/realm/J;->c:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lio/realm/G;->b(Ljava/lang/String;Z)Lio/realm/G;

    move-result-object v2

    const-class v3, Lio/realm/f;

    invoke-virtual {v2, v1, v3, v0}, Lio/realm/G;->a(Lio/realm/J;Ljava/lang/Class;Lio/realm/internal/t;)Lio/realm/d;

    move-result-object v0

    check-cast v0, Lio/realm/f;

    return-object v0
.end method

.method public final x()Lio/realm/k;
    .locals 1

    iget-object v0, p0, Lio/realm/f;->z:Lio/realm/k;

    return-object v0
.end method
