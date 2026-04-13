.class public final Lw2/s;
.super Lw2/n;


# instance fields
.field public final b:LL2/i;


# direct methods
.method public constructor <init>(LL2/i;)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lw2/n;-><init>(I)V

    iput-object p1, p0, Lw2/s;->b:LL2/i;

    return-void
.end method


# virtual methods
.method public final a(Lw2/j;)Z
    .locals 1

    iget-object p1, p1, Lw2/j;->g:Ljava/util/HashMap;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1
.end method

.method public final b(Lw2/j;)[Lu2/c;
    .locals 1

    iget-object p1, p1, Lw2/j;->g:Ljava/util/HashMap;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1
.end method

.method public final c(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    new-instance v0, Lr0/q;

    invoke-direct {v0, p1}, Lr0/q;-><init>(Lcom/google/android/gms/common/api/Status;)V

    iget-object p1, p0, Lw2/s;->b:LL2/i;

    invoke-virtual {p1, v0}, LL2/i;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public final d(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lw2/s;->b:LL2/i;

    invoke-virtual {v0, p1}, LL2/i;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public final e(Lw2/j;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1}, Lw2/s;->h(Lw2/j;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lw2/s;->b:LL2/i;

    invoke-virtual {v0, p1}, LL2/i;->a(Ljava/lang/Exception;)V

    return-void

    :catch_1
    move-exception p1

    invoke-static {p1}, Lw2/n;->g(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p0, p1}, Lw2/s;->c(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :catch_2
    move-exception p1

    invoke-static {p1}, Lw2/n;->g(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {p0, v0}, Lw2/s;->c(Lcom/google/android/gms/common/api/Status;)V

    throw p1
.end method

.method public final bridge synthetic f(Lp5/p;Z)V
    .locals 0

    return-void
.end method

.method public final h(Lw2/j;)V
    .locals 1

    iget-object p1, p1, Lw2/j;->g:Ljava/util/HashMap;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lw2/s;->b:LL2/i;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, LL2/i;->b(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1
.end method
