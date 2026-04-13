.class public final Lw2/j;
.super Ljava/lang/Object;

# interfaces
.implements Lv2/c;
.implements Lv2/d;


# instance fields
.field public final b:Ljava/util/LinkedList;

.field public final c:Lv2/a;

.field public final d:Lw2/a;

.field public final e:Lp5/p;

.field public final f:Ljava/util/HashSet;

.field public final g:Ljava/util/HashMap;

.field public final h:I

.field public i:Z

.field public final j:Ljava/util/ArrayList;

.field public k:Lu2/a;

.field public final synthetic l:Lw2/d;


# direct methods
.method public constructor <init>(Lw2/d;Lz2/c;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw2/j;->l:Lw2/d;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lw2/j;->b:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lw2/j;->f:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lw2/j;->g:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lw2/j;->j:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lw2/j;->k:Lu2/a;

    iget-object p1, p1, Lw2/d;->B:LF2/e;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object p1, p2, Lz2/c;->a:Landroid/content/Context;

    new-instance v0, Lr0/C;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lr0/C;-><init>(I)V

    sget-object v1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    iget-object v3, v0, Lr0/C;->b:Ljava/lang/Object;

    check-cast v3, Ln/f;

    if-nez v3, :cond_0

    new-instance v3, Ln/f;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ln/f;-><init>(I)V

    iput-object v3, v0, Lr0/C;->b:Ljava/lang/Object;

    :cond_0
    iget-object v3, v0, Lr0/C;->b:Ljava/lang/Object;

    check-cast v3, Ln/f;

    invoke-virtual {v3, v1}, Ln/f;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lr0/C;->d:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lr0/C;->c:Ljava/lang/Object;

    new-instance v3, Lr0/C;

    iget-object p1, v0, Lr0/C;->b:Ljava/lang/Object;

    check-cast p1, Ln/f;

    iget-object v1, v0, Lr0/C;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v0, v0, Lr0/C;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v3, p1, v1, v0}, Lr0/C;-><init>(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p2, Lz2/c;->c:Lp5/p;

    iget-object p1, p1, Lp5/p;->q:Ljava/lang/Object;

    check-cast p1, Lz2/b;

    invoke-static {p1}, Lx2/o;->e(Ljava/lang/Object;)V

    iget-object v4, p2, Lz2/c;->d:Lx2/i;

    iget-object v1, p2, Lz2/c;->a:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lz2/d;

    move-object v6, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lz2/d;-><init>(Landroid/content/Context;Landroid/os/Looper;Lr0/C;Lx2/i;Lw2/j;Lw2/j;)V

    iget-object p1, p2, Lz2/c;->b:Ljava/lang/String;

    if-eqz p1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/common/internal/a;

    iput-object p1, v1, Lcom/google/android/gms/common/internal/a;->r:Ljava/lang/String;

    :cond_1
    iput-object v0, v5, Lw2/j;->c:Lv2/a;

    iget-object p1, p2, Lz2/c;->e:Lw2/a;

    iput-object p1, v5, Lw2/j;->d:Lw2/a;

    new-instance p1, Lp5/p;

    const/16 v0, 0xc

    invoke-direct {p1, v0}, Lp5/p;-><init>(I)V

    iput-object p1, v5, Lw2/j;->e:Lp5/p;

    iget p1, p2, Lz2/c;->f:I

    iput p1, v5, Lw2/j;->h:I

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lw2/j;->l:Lw2/d;

    iget-object v1, v1, Lw2/d;->B:LF2/e;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_0

    invoke-virtual {p0, p1}, Lw2/j;->i(I)V

    return-void

    :cond_0
    new-instance v0, LG/a;

    const/4 v2, 0x4

    invoke-direct {v0, p1, v2, p0}, LG/a;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b()V
    .locals 3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lw2/j;->l:Lw2/d;

    iget-object v1, v1, Lw2/d;->B:LF2/e;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lw2/j;->h()V

    return-void

    :cond_0
    new-instance v0, Lk/S0;

    const/4 v2, 0x4

    invoke-direct {v0, v2, p0}, Lk/S0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final c(Lu2/a;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lw2/j;->o(Lu2/a;Ljava/lang/RuntimeException;)V

    return-void
.end method

.method public final d(Lu2/a;)V
    .locals 3

    iget-object v0, p0, Lw2/j;->f:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lu2/a;->t:Lu2/a;

    invoke-static {p1, v0}, Lx2/o;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lw2/j;->c:Lv2/a;

    invoke-interface {p1}, Lv2/a;->e()V

    :cond_0
    const/4 p1, 0x0

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :cond_2
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method public final e(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    iget-object v0, p0, Lw2/j;->l:Lw2/d;

    iget-object v0, v0, Lw2/d;->B:LF2/e;

    invoke-static {v0}, Lx2/o;->a(Landroid/os/Handler;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lw2/j;->f(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V

    return-void
.end method

.method public final f(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V
    .locals 4

    iget-object v0, p0, Lw2/j;->l:Lw2/d;

    iget-object v0, v0, Lw2/d;->B:LF2/e;

    invoke-static {v0}, Lx2/o;->a(Landroid/os/Handler;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-eqz p2, :cond_1

    move v0, v1

    :cond_1
    if-eq v2, v0, :cond_6

    iget-object v0, p0, Lw2/j;->b:Ljava/util/LinkedList;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lw2/n;

    if-eqz p3, :cond_3

    iget v2, v1, Lw2/n;->a:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {v1, p1}, Lw2/n;->c(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v1, p2}, Lw2/n;->d(Ljava/lang/Exception;)V

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_5
    return-void

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Status XOR exception should be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final g()V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lw2/j;->b:Ljava/util/LinkedList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lw2/n;

    iget-object v5, p0, Lw2/j;->c:Lv2/a;

    invoke-interface {v5}, Lv2/a;->h()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v4}, Lw2/j;->k(Lw2/n;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final h()V
    .locals 3

    iget-object v0, p0, Lw2/j;->l:Lw2/d;

    iget-object v1, v0, Lw2/d;->B:LF2/e;

    invoke-static {v1}, Lx2/o;->a(Landroid/os/Handler;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lw2/j;->k:Lu2/a;

    sget-object v1, Lu2/a;->t:Lu2/a;

    invoke-virtual {p0, v1}, Lw2/j;->d(Lu2/a;)V

    iget-object v0, v0, Lw2/d;->B:LF2/e;

    iget-boolean v1, p0, Lw2/j;->i:Z

    if-eqz v1, :cond_0

    const/16 v1, 0xb

    iget-object v2, p0, Lw2/j;->d:Lw2/a;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/16 v1, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lw2/j;->i:Z

    :cond_0
    iget-object v0, p0, Lw2/j;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lw2/j;->g()V

    invoke-virtual {p0}, Lw2/j;->j()V

    return-void

    :cond_1
    invoke-static {v0}, LB/f;->k(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    move-result-object v0

    throw v0
.end method

.method public final i(I)V
    .locals 8

    iget-object v0, p0, Lw2/j;->l:Lw2/d;

    iget-object v1, v0, Lw2/d;->B:LF2/e;

    iget-object v2, v0, Lw2/d;->B:LF2/e;

    invoke-static {v2}, Lx2/o;->a(Landroid/os/Handler;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lw2/j;->k:Lu2/a;

    const/4 v3, 0x1

    iput-boolean v3, p0, Lw2/j;->i:Z

    iget-object v4, p0, Lw2/j;->c:Lv2/a;

    invoke-interface {v4}, Lv2/a;->k()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lw2/j;->e:Lp5/p;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "The connection to Google Play services was lost"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-ne p1, v3, :cond_0

    const-string p1, " due to service disconnection."

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/4 v7, 0x3

    if-ne p1, v7, :cond_1

    const-string p1, " due to dead object exception."

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    if-eqz v4, :cond_2

    const-string p1, " Last reason for disconnect: "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v4, Lcom/google/android/gms/common/api/Status;

    const/16 v6, 0x14

    invoke-direct {v4, v6, p1, v2, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;Lu2/a;)V

    invoke-virtual {v5, v3, v4}, Lp5/p;->O(ZLcom/google/android/gms/common/api/Status;)V

    const/16 p1, 0x9

    iget-object v2, p0, Lw2/j;->d:Lw2/a;

    invoke-static {v1, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, p1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const/16 p1, 0xb

    invoke-static {v1, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object p1, v0, Lw2/d;->v:Lp5/p;

    iget-object p1, p1, Lp5/p;->q:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    iget-object p1, p0, Lw2/j;->g:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    invoke-static {p1}, LB/f;->k(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    move-result-object p1

    throw p1
.end method

.method public final j()V
    .locals 5

    iget-object v0, p0, Lw2/j;->l:Lw2/d;

    iget-object v1, v0, Lw2/d;->B:LF2/e;

    const/16 v2, 0xc

    iget-object v3, p0, Lw2/j;->d:Lw2/a;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-wide v3, v0, Lw2/d;->b:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final k(Lw2/n;)Z
    .locals 13

    const-string v0, "DeadObjectException thrown while running ApiCallRunner."

    const/4 v1, 0x1

    if-nez p1, :cond_0

    iget-object v2, p0, Lw2/j;->e:Lp5/p;

    iget-object v3, p0, Lw2/j;->c:Lv2/a;

    invoke-interface {v3}, Lv2/a;->m()Z

    move-result v4

    invoke-virtual {p1, v2, v4}, Lw2/n;->f(Lp5/p;Z)V

    :try_start_0
    invoke-virtual {p1, p0}, Lw2/n;->e(Lw2/j;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    invoke-virtual {p0, v1}, Lw2/j;->a(I)V

    invoke-interface {v3, v0}, Lv2/a;->b(Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-virtual {p1, p0}, Lw2/n;->b(Lw2/j;)[Lu2/c;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_6

    array-length v5, v2

    if-nez v5, :cond_1

    goto :goto_3

    :cond_1
    iget-object v5, p0, Lw2/j;->c:Lv2/a;

    invoke-interface {v5}, Lv2/a;->j()[Lu2/c;

    move-result-object v5

    if-nez v5, :cond_2

    new-array v5, v3, [Lu2/c;

    :cond_2
    new-instance v6, Ln/e;

    array-length v7, v5

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    if-nez v7, :cond_3

    sget-object v7, Ln/h;->a:[I

    iput-object v7, v6, Ln/j;->b:[I

    sget-object v7, Ln/h;->b:[Ljava/lang/Object;

    iput-object v7, v6, Ln/j;->q:[Ljava/lang/Object;

    goto :goto_0

    :cond_3
    invoke-virtual {v6, v7}, Ln/j;->a(I)V

    :goto_0
    const/4 v7, 0x0

    iput v7, v6, Ln/j;->r:I

    move v7, v3

    :goto_1
    array-length v8, v5

    if-ge v7, v8, :cond_4

    aget-object v8, v5, v7

    iget-object v9, v8, Lu2/c;->b:Ljava/lang/String;

    invoke-virtual {v8}, Lu2/c;->a()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v9, v8}, Ln/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    array-length v5, v2

    move v7, v3

    :goto_2
    if-ge v7, v5, :cond_6

    aget-object v8, v2, v7

    iget-object v9, v8, Lu2/c;->b:Ljava/lang/String;

    invoke-virtual {v6, v9, v4}, Ln/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    if-eqz v9, :cond_7

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v8}, Lu2/c;->a()J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-gez v9, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    move-object v8, v4

    :cond_7
    :goto_4
    if-nez v8, :cond_8

    iget-object v2, p0, Lw2/j;->e:Lp5/p;

    iget-object v3, p0, Lw2/j;->c:Lv2/a;

    invoke-interface {v3}, Lv2/a;->m()Z

    move-result v4

    invoke-virtual {p1, v2, v4}, Lw2/n;->f(Lp5/p;Z)V

    :try_start_1
    invoke-virtual {p1, p0}, Lw2/n;->e(Lw2/j;)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_1

    return v1

    :catch_1
    invoke-virtual {p0, v1}, Lw2/j;->a(I)V

    invoke-interface {v3, v0}, Lv2/a;->b(Ljava/lang/String;)V

    return v1

    :cond_8
    iget-object v0, p0, Lw2/j;->c:Lv2/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v8, Lu2/c;->b:Ljava/lang/String;

    invoke-virtual {v8}, Lu2/c;->a()J

    move-result-wide v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " could not execute call because it requires feature ("

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")."

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GoogleApiManager"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lw2/j;->l:Lw2/d;

    iget-boolean v0, v0, Lw2/d;->C:Z

    if-eqz v0, :cond_b

    invoke-virtual {p1, p0}, Lw2/n;->a(Lw2/j;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object p1, p0, Lw2/j;->d:Lw2/a;

    new-instance v0, Lw2/k;

    invoke-direct {v0, p1, v8}, Lw2/k;-><init>(Lw2/a;Lu2/c;)V

    iget-object p1, p0, Lw2/j;->j:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const-wide/16 v1, 0x1388

    const/16 v5, 0xf

    if-ltz p1, :cond_9

    iget-object v0, p0, Lw2/j;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw2/k;

    iget-object v0, p0, Lw2/j;->l:Lw2/d;

    iget-object v0, v0, Lw2/d;->B:LF2/e;

    invoke-virtual {v0, v5, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lw2/j;->l:Lw2/d;

    iget-object v0, v0, Lw2/d;->B:LF2/e;

    invoke-static {v0, v5, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_5

    :cond_9
    iget-object p1, p0, Lw2/j;->j:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lw2/j;->l:Lw2/d;

    iget-object p1, p1, Lw2/d;->B:LF2/e;

    invoke-static {p1, v5, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {p1, v5, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object p1, p0, Lw2/j;->l:Lw2/d;

    iget-object p1, p1, Lw2/d;->B:LF2/e;

    const/16 v1, 0x10

    invoke-static {p1, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    new-instance p1, Lu2/a;

    const/4 v0, 0x2

    invoke-direct {p1, v0, v4}, Lu2/a;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0, p1}, Lw2/j;->l(Lu2/a;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lw2/j;->l:Lw2/d;

    iget v1, p0, Lw2/j;->h:I

    invoke-virtual {v0, p1, v1}, Lw2/d;->a(Lu2/a;I)Z

    :cond_a
    :goto_5
    return v3

    :cond_b
    new-instance v0, Lv2/g;

    invoke-direct {v0, v8}, Lv2/g;-><init>(Lu2/c;)V

    invoke-virtual {p1, v0}, Lw2/n;->d(Ljava/lang/Exception;)V

    return v1
.end method

.method public final l(Lu2/a;)Z
    .locals 1

    sget-object p1, Lw2/d;->F:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    monitor-exit p1

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final m()V
    .locals 11

    iget-object v0, p0, Lw2/j;->l:Lw2/d;

    iget-object v1, v0, Lw2/d;->B:LF2/e;

    invoke-static {v1}, Lx2/o;->a(Landroid/os/Handler;)V

    iget-object v1, p0, Lw2/j;->c:Lv2/a;

    invoke-interface {v1}, Lv2/a;->h()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-interface {v1}, Lv2/a;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_4

    :cond_0
    const/16 v2, 0xa

    :try_start_0
    iget-object v3, v0, Lw2/d;->v:Lp5/p;

    iget-object v4, v0, Lw2/d;->t:Landroid/content/Context;

    iget-object v5, v3, Lp5/p;->q:Ljava/lang/Object;

    check-cast v5, Landroid/util/SparseIntArray;

    invoke-static {v4}, Lx2/o;->e(Ljava/lang/Object;)V

    invoke-interface {v1}, Lv2/a;->i()I

    move-result v6

    iget-object v7, v3, Lp5/p;->q:Ljava/lang/Object;

    check-cast v7, Landroid/util/SparseIntArray;

    const/4 v8, -0x1

    invoke-virtual {v7, v6, v8}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    if-eq v7, v8, :cond_1

    goto :goto_2

    :cond_1
    const/4 v7, 0x0

    move v9, v7

    :goto_0
    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v10

    if-ge v9, v10, :cond_3

    invoke-virtual {v5, v9}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v10

    if-le v10, v6, :cond_2

    invoke-virtual {v5, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    if-nez v10, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_3
    move v7, v8

    :goto_1
    if-ne v7, v8, :cond_4

    iget-object v3, v3, Lp5/p;->r:Ljava/lang/Object;

    check-cast v3, Lu2/e;

    invoke-virtual {v3, v4, v6}, Lu2/f;->b(Landroid/content/Context;I)I

    move-result v3

    move v7, v3

    :cond_4
    invoke-virtual {v5, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    :goto_2
    if-eqz v7, :cond_5

    new-instance v0, Lu2/a;

    const/4 v3, 0x0

    invoke-direct {v0, v7, v3}, Lu2/a;-><init>(ILandroid/app/PendingIntent;)V

    const-string v4, "GoogleApiManager"

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lu2/a;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The service for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not available: "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0, v3}, Lw2/j;->o(Lu2/a;Ljava/lang/RuntimeException;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_5
    new-instance v3, LE1/E;

    iget-object v4, p0, Lw2/j;->d:Lw2/a;

    invoke-direct {v3, v0, v1, v4}, LE1/E;-><init>(Lw2/d;Lv2/a;Lw2/a;)V

    invoke-interface {v1}, Lv2/a;->m()Z

    move-result v0

    if-nez v0, :cond_6

    :try_start_1
    invoke-interface {v1, v3}, Lv2/a;->c(LE1/E;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    new-instance v1, Lu2/a;

    invoke-direct {v1, v2}, Lu2/a;-><init>(I)V

    invoke-virtual {p0, v1, v0}, Lw2/j;->o(Lu2/a;Ljava/lang/RuntimeException;)V

    return-void

    :cond_6
    const/4 v0, 0x0

    invoke-static {v0}, Lx2/o;->e(Ljava/lang/Object;)V

    throw v0

    :goto_3
    new-instance v1, Lu2/a;

    invoke-direct {v1, v2}, Lu2/a;-><init>(I)V

    invoke-virtual {p0, v1, v0}, Lw2/j;->o(Lu2/a;Ljava/lang/RuntimeException;)V

    :cond_7
    :goto_4
    return-void
.end method

.method public final n(Lw2/n;)V
    .locals 2

    iget-object v0, p0, Lw2/j;->l:Lw2/d;

    iget-object v0, v0, Lw2/d;->B:LF2/e;

    invoke-static {v0}, Lx2/o;->a(Landroid/os/Handler;)V

    iget-object v0, p0, Lw2/j;->c:Lv2/a;

    invoke-interface {v0}, Lv2/a;->h()Z

    move-result v0

    iget-object v1, p0, Lw2/j;->b:Ljava/util/LinkedList;

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lw2/j;->k(Lw2/n;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lw2/j;->j()V

    return-void

    :cond_0
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lw2/j;->k:Lu2/a;

    if-eqz p1, :cond_2

    iget v0, p1, Lu2/a;->q:I

    if-eqz v0, :cond_2

    iget-object v0, p1, Lu2/a;->r:Landroid/app/PendingIntent;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lw2/j;->o(Lu2/a;Ljava/lang/RuntimeException;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lw2/j;->m()V

    return-void
.end method

.method public final o(Lu2/a;Ljava/lang/RuntimeException;)V
    .locals 6

    iget-object v0, p0, Lw2/j;->l:Lw2/d;

    iget-object v0, v0, Lw2/d;->B:LF2/e;

    invoke-static {v0}, Lx2/o;->a(Landroid/os/Handler;)V

    iget-object v0, p0, Lw2/j;->l:Lw2/d;

    iget-object v0, v0, Lw2/d;->B:LF2/e;

    invoke-static {v0}, Lx2/o;->a(Landroid/os/Handler;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lw2/j;->k:Lu2/a;

    iget-object v1, p0, Lw2/j;->l:Lw2/d;

    iget-object v1, v1, Lw2/d;->v:Lp5/p;

    iget-object v1, v1, Lp5/p;->q:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    invoke-virtual {p0, p1}, Lw2/j;->d(Lu2/a;)V

    iget-object v1, p0, Lw2/j;->c:Lv2/a;

    instance-of v1, v1, Lz2/d;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget v1, p1, Lu2/a;->q:I

    const/16 v3, 0x18

    if-eq v1, v3, :cond_0

    iget-object v1, p0, Lw2/j;->l:Lw2/d;

    iput-boolean v2, v1, Lw2/d;->q:Z

    iget-object v1, v1, Lw2/d;->B:LF2/e;

    const/16 v3, 0x13

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/32 v4, 0x493e0

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    iget v1, p1, Lu2/a;->q:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    sget-object p1, Lw2/d;->E:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, Lw2/j;->e(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :cond_1
    iget-object v1, p0, Lw2/j;->b:Ljava/util/LinkedList;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iput-object p1, p0, Lw2/j;->k:Lu2/a;

    return-void

    :cond_2
    if-eqz p2, :cond_3

    iget-object p1, p0, Lw2/j;->l:Lw2/d;

    iget-object p1, p1, Lw2/d;->B:LF2/e;

    invoke-static {p1}, Lx2/o;->a(Landroid/os/Handler;)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p2, p1}, Lw2/j;->f(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V

    return-void

    :cond_3
    iget-object p2, p0, Lw2/j;->l:Lw2/d;

    iget-boolean p2, p2, Lw2/d;->C:Z

    if-eqz p2, :cond_8

    iget-object p2, p0, Lw2/j;->d:Lw2/a;

    invoke-static {p2, p1}, Lw2/d;->b(Lw2/a;Lu2/a;)Lcom/google/android/gms/common/api/Status;

    move-result-object p2

    invoke-virtual {p0, p2, v0, v2}, Lw2/j;->f(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V

    iget-object p2, p0, Lw2/j;->b:Ljava/util/LinkedList;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1}, Lw2/j;->l(Lu2/a;)Z

    move-result p2

    if-nez p2, :cond_7

    iget-object p2, p0, Lw2/j;->l:Lw2/d;

    iget v0, p0, Lw2/j;->h:I

    invoke-virtual {p2, p1, v0}, Lw2/d;->a(Lu2/a;I)Z

    move-result p2

    if-nez p2, :cond_7

    iget p2, p1, Lu2/a;->q:I

    const/16 v0, 0x12

    if-ne p2, v0, :cond_5

    iput-boolean v2, p0, Lw2/j;->i:Z

    :cond_5
    iget-boolean p2, p0, Lw2/j;->i:Z

    if-eqz p2, :cond_6

    iget-object p1, p0, Lw2/j;->l:Lw2/d;

    iget-object p2, p0, Lw2/j;->d:Lw2/a;

    iget-object p1, p1, Lw2/d;->B:LF2/e;

    const/16 v0, 0x9

    invoke-static {p1, v0, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    const-wide/16 v0, 0x1388

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_6
    iget-object p2, p0, Lw2/j;->d:Lw2/a;

    invoke-static {p2, p1}, Lw2/d;->b(Lw2/a;Lu2/a;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p0, p1}, Lw2/j;->e(Lcom/google/android/gms/common/api/Status;)V

    :cond_7
    :goto_0
    return-void

    :cond_8
    iget-object p2, p0, Lw2/j;->d:Lw2/a;

    invoke-static {p2, p1}, Lw2/d;->b(Lw2/a;Lu2/a;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p0, p1}, Lw2/j;->e(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public final p()V
    .locals 5

    iget-object v0, p0, Lw2/j;->l:Lw2/d;

    iget-object v0, v0, Lw2/d;->B:LF2/e;

    invoke-static {v0}, Lx2/o;->a(Landroid/os/Handler;)V

    sget-object v0, Lw2/d;->D:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lw2/j;->e(Lcom/google/android/gms/common/api/Status;)V

    iget-object v1, p0, Lw2/j;->e:Lp5/p;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lp5/p;->O(ZLcom/google/android/gms/common/api/Status;)V

    iget-object v0, p0, Lw2/j;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    new-array v1, v2, [Lw2/g;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lw2/g;

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    new-instance v3, Lw2/s;

    new-instance v4, LL2/i;

    invoke-direct {v4}, LL2/i;-><init>()V

    invoke-direct {v3, v4}, Lw2/s;-><init>(LL2/i;)V

    invoke-virtual {p0, v3}, Lw2/j;->n(Lw2/n;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lu2/a;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lu2/a;-><init>(I)V

    invoke-virtual {p0, v0}, Lw2/j;->d(Lu2/a;)V

    iget-object v0, p0, Lw2/j;->c:Lv2/a;

    invoke-interface {v0}, Lv2/a;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lv0/f;

    invoke-direct {v1, p0}, Lv0/f;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lv2/a;->f(Lv0/f;)V

    :cond_1
    return-void
.end method
