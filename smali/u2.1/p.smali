.class public abstract Lu2/p;
.super Ljava/lang/Object;


# static fields
.field public static final a:[Lu2/n;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lu2/n;

    sget-object v1, Lu2/q;->a:Lu2/m;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lu2/q;->b:Lu2/m;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lu2/p;->a:[Lu2/n;

    return-void
.end method
