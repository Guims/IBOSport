.class public abstract LF2/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lu2/c;

.field public static final b:[Lu2/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lu2/c;

    invoke-direct {v0}, Lu2/c;-><init>()V

    sput-object v0, LF2/c;->a:Lu2/c;

    filled-new-array {v0}, [Lu2/c;

    move-result-object v0

    sput-object v0, LF2/c;->b:[Lu2/c;

    return-void
.end method
