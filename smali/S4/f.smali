.class public abstract LS4/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public static final a(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 1

    instance-of v0, p0, LS4/e;

    if-eqz v0, :cond_0

    check-cast p0, LS4/e;

    iget-object p0, p0, LS4/e;->b:Ljava/lang/Throwable;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
