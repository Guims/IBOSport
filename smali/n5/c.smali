.class public final Ln5/c;
.super Lm5/s;

# interfaces
.implements Lm5/z;


# instance fields
.field private volatile _immediate:Ln5/c;

.field public final r:Landroid/os/Handler;

.field public final s:Z

.field public final t:Ln5/c;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Z)V
    .locals 1

    invoke-direct {p0}, Lm5/s;-><init>()V

    iput-object p1, p0, Ln5/c;->r:Landroid/os/Handler;

    iput-boolean p2, p0, Ln5/c;->s:Z

    if-eqz p2, :cond_0

    move-object p2, p0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-object p2, p0, Ln5/c;->_immediate:Ln5/c;

    iget-object p2, p0, Ln5/c;->_immediate:Ln5/c;

    if-nez p2, :cond_1

    new-instance p2, Ln5/c;

    const/4 v0, 0x1

    invoke-direct {p2, p1, v0}, Ln5/c;-><init>(Landroid/os/Handler;Z)V

    iput-object p2, p0, Ln5/c;->_immediate:Ln5/c;

    :cond_1
    iput-object p2, p0, Ln5/c;->t:Ln5/c;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Ln5/c;

    if-eqz v0, :cond_0

    check-cast p1, Ln5/c;

    iget-object p1, p1, Ln5/c;->r:Landroid/os/Handler;

    iget-object v0, p0, Ln5/c;->r:Landroid/os/Handler;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Ln5/c;->r:Landroid/os/Handler;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lm5/C;->a:Lt5/d;

    sget-object v0, Lr5/o;->a:Ln5/c;

    if-ne p0, v0, :cond_0

    const-string v0, "Dispatchers.Main"

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    iget-object v0, v0, Ln5/c;->t:Ln5/c;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v0, v1

    :goto_0
    if-ne p0, v0, :cond_1

    const-string v0, "Dispatchers.Main.immediate"

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    if-nez v0, :cond_2

    iget-object v0, p0, Ln5/c;->r:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Ln5/c;->s:Z

    if-eqz v1, :cond_2

    const-string v1, ".immediate"

    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/e;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public final x(LV4/i;Ljava/lang/Runnable;)V
    .locals 3

    iget-object v0, p0, Ln5/c;->r:Landroid/os/Handler;

    invoke-virtual {v0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/concurrent/CancellationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The task was rejected, the handler underlying the dispatcher \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\' was closed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    sget-object v1, Lm5/t;->q:Lm5/t;

    invoke-interface {p1, v1}, LV4/i;->h(LV4/h;)LV4/g;

    move-result-object v1

    check-cast v1, Lm5/Q;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lm5/Q;->b(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    sget-object v0, Lm5/C;->b:Lt5/c;

    invoke-virtual {v0, p1, p2}, Lt5/c;->x(LV4/i;Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public final y()Z
    .locals 2

    iget-boolean v0, p0, Ln5/c;->s:Z

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Ln5/c;->r:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Le5/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
