.class public final Lk2/d;
.super Ljava/lang/Object;


# instance fields
.field public final a:LY1/c;

.field public final b:LJ/l;

.field public final c:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;LJ/l;)V
    .locals 3

    new-instance v0, LY1/c;

    const/16 v1, 0x14

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, LY1/c;-><init>(ILjava/lang/Object;Z)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lk2/d;->c:Ljava/util/HashMap;

    iput-object v0, p0, Lk2/d;->a:LY1/c;

    iput-object p2, p0, Lk2/d;->b:LJ/l;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)Lk2/e;
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lk2/d;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lk2/d;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lk2/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lk2/d;->a:LY1/c;

    invoke-virtual {v0, p1}, LY1/c;->D(Ljava/lang/String;)Lcom/google/android/datatransport/cct/CctBackendFactory;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :cond_1
    :try_start_2
    iget-object v1, p0, Lk2/d;->b:LJ/l;

    iget-object v2, v1, LJ/l;->r:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    iget-object v3, v1, LJ/l;->s:Ljava/lang/Object;

    check-cast v3, Ls2/a;

    iget-object v1, v1, LJ/l;->q:Ljava/lang/Object;

    check-cast v1, Ls2/a;

    new-instance v4, Lk2/b;

    invoke-direct {v4, v2, v3, v1, p1}, Lk2/b;-><init>(Landroid/content/Context;Ls2/a;Ls2/a;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/google/android/datatransport/cct/CctBackendFactory;->create(Lk2/c;)Lk2/e;

    move-result-object v0

    iget-object v1, p0, Lk2/d;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method
