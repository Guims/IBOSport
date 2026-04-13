.class public abstract LI4/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:LI4/d;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LI4/d;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0}, LI4/d;-><init>()V

    sput-object v0, LI4/b;->a:LI4/d;

    return-void
.end method
