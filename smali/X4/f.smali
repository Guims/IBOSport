.class public abstract LX4/f;
.super Ljava/lang/Object;


# static fields
.field public static final a:LF5/i;

.field public static b:LF5/i;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LF5/i;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, LF5/i;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    sput-object v0, LX4/f;->a:LF5/i;

    return-void
.end method
