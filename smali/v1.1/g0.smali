.class public final Lv1/g0;
.super Ljava/lang/Object;


# static fields
.field public static final d:LI/c;


# instance fields
.field public a:I

.field public b:LJ/q;

.field public c:LJ/q;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LI/c;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, LI/c;-><init>(I)V

    sput-object v0, Lv1/g0;->d:LI/c;

    return-void
.end method

.method public static a()Lv1/g0;
    .locals 1

    sget-object v0, Lv1/g0;->d:LI/c;

    invoke-virtual {v0}, LI/c;->p()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv1/g0;

    if-nez v0, :cond_0

    new-instance v0, Lv1/g0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    :cond_0
    return-object v0
.end method
