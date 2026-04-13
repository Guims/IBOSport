.class public final Lj2/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public b:LR4/a;

.field public q:Ld/a;

.field public r:LR4/a;

.field public s:Lk4/l;

.field public t:LR4/a;

.field public u:LR4/a;


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lj2/k;->t:LR4/a;

    invoke-interface {v0}, LR4/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq2/d;

    check-cast v0, Lq2/h;

    invoke-virtual {v0}, Lq2/h;->close()V

    return-void
.end method
