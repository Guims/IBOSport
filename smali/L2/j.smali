.class public abstract LL2/j;
.super Ljava/lang/Object;


# static fields
.field public static final a:LL2/q;

.field public static final b:LL2/p;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LL2/q;

    invoke-direct {v0}, LL2/q;-><init>()V

    sput-object v0, LL2/j;->a:LL2/q;

    new-instance v0, LL2/p;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LL2/p;-><init>(I)V

    sput-object v0, LL2/j;->b:LL2/p;

    return-void
.end method
