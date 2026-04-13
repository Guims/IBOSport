.class public abstract LK5/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, LK5/j;->s:LK5/j;

    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-static {v0}, LW3/e;->r(Ljava/lang/String;)LK5/j;

    move-result-object v0

    iget-object v0, v0, LK5/j;->b:[B

    sput-object v0, LK5/a;->a:[B

    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    invoke-static {v0}, LW3/e;->r(Ljava/lang/String;)LK5/j;

    return-void
.end method
