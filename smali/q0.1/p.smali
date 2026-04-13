.class public final Lq0/p;
.super Ljava/lang/Object;


# static fields
.field public static final b:Lq0/p;


# instance fields
.field public final a:Landroid/media/metrics/LogSessionId;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lq0/p;

    invoke-static {}, LJ/c;->f()Landroid/media/metrics/LogSessionId;

    move-result-object v1

    invoke-direct {v0, v1}, Lq0/p;-><init>(Landroid/media/metrics/LogSessionId;)V

    sput-object v0, Lq0/p;->b:Lq0/p;

    return-void
.end method

.method public constructor <init>(Landroid/media/metrics/LogSessionId;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq0/p;->a:Landroid/media/metrics/LogSessionId;

    return-void
.end method
