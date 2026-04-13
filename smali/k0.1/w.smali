.class public final Lk0/w;
.super Ljava/lang/Object;

# interfaces
.implements Lk0/d;


# virtual methods
.method public final a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lk0/y;
    .locals 2

    new-instance v0, Lk0/y;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    invoke-direct {v0, v1}, Lk0/y;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method
