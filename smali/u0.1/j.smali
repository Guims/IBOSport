.class public interface abstract Lu0/j;
.super Ljava/lang/Object;


# direct methods
.method public static e(Lu0/j;Lu0/j;)V
    .locals 1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1, v0}, Lu0/j;->a(Lu0/m;)V

    :cond_1
    if-eqz p0, :cond_2

    invoke-interface {p0, v0}, Lu0/j;->b(Lu0/m;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public abstract a(Lu0/m;)V
.end method

.method public abstract b(Lu0/m;)V
.end method

.method public abstract c()Ljava/util/UUID;
.end method

.method public abstract d()Z
.end method

.method public abstract f(Ljava/lang/String;)Z
.end method

.method public abstract g()Lu0/i;
.end method

.method public abstract getState()I
.end method

.method public abstract h()Lp0/a;
.end method
