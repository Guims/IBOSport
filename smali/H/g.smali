.class public abstract LH/g;
.super Ljava/lang/Object;


# static fields
.field public static final a:LB0/i;

.field public static final b:LB0/i;

.field public static final c:LB0/i;

.field public static final d:LB0/i;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, LB0/i;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LB0/i;-><init>(LH/f;Z)V

    sput-object v0, LH/g;->a:LB0/i;

    new-instance v0, LB0/i;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, LB0/i;-><init>(LH/f;Z)V

    sput-object v0, LH/g;->b:LB0/i;

    new-instance v0, LB0/i;

    sget-object v1, LH/f;->a:LH/f;

    invoke-direct {v0, v1, v2}, LB0/i;-><init>(LH/f;Z)V

    sput-object v0, LH/g;->c:LB0/i;

    new-instance v0, LB0/i;

    invoke-direct {v0, v1, v3}, LB0/i;-><init>(LH/f;Z)V

    sput-object v0, LH/g;->d:LB0/i;

    return-void
.end method
