.class public final Lf1/l;
.super Ljava/lang/Object;


# static fields
.field public static final c:Lf1/l;


# instance fields
.field public final a:J

.field public final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lf1/l;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lf1/l;-><init>(JZ)V

    sput-object v0, Lf1/l;->c:Lf1/l;

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lf1/l;->a:J

    iput-boolean p3, p0, Lf1/l;->b:Z

    return-void
.end method
