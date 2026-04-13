.class public final LT/U;
.super LT/T;


# static fields
.field public static final b:LT/U;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LT/U;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, LT/T;-><init>(I)V

    sput-object v0, LT/U;->b:LT/U;

    return-void
.end method
