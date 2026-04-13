.class public final LA3/e;
.super Ljava/lang/Object;


# instance fields
.field public final a:LE3/q;


# direct methods
.method public constructor <init>(LE3/q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LA3/e;->a:LE3/q;

    return-void
.end method

.method public static a()LA3/e;
    .locals 2

    invoke-static {}, Lv3/e;->c()Lv3/e;

    move-result-object v0

    const-class v1, LA3/e;

    invoke-virtual {v0, v1}, Lv3/e;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LA3/e;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "FirebaseCrashlytics component is not present."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
