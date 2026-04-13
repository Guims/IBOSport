.class public abstract Lu5/e;
.super Ljava/lang/Object;


# static fields
.field public static final a:LE1/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LE1/a;

    const-string v1, "NO_OWNER"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, LE1/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lu5/e;->a:LE1/a;

    return-void
.end method

.method public static a()Lu5/d;
    .locals 2

    new-instance v0, Lu5/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu5/d;-><init>(Z)V

    return-object v0
.end method
