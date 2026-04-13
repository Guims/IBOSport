.class public abstract Le2/d;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lu2/j;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lu2/j;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Lu2/j;-><init>(I)V

    sput-object v0, Le2/d;->a:Lu2/j;

    return-void
.end method

.method public static a(ILe2/a;)LJ/l;
    .locals 6

    new-instance v1, LI/d;

    invoke-direct {v1, p0}, LI/d;-><init>(I)V

    new-instance v0, LJ/l;

    const/16 v4, 0x10

    const/4 v5, 0x0

    sget-object v3, Le2/d;->a:Lu2/j;

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, LJ/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IZ)V

    return-object v0
.end method
