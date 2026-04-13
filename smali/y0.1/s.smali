.class public final Ly0/s;
.super Ljava/lang/Object;


# static fields
.field public static final e:Ly0/s;


# instance fields
.field public final a:J

.field public final b:J

.field public final c:J

.field public final d:LB4/p;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Ly0/s;

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v0 .. v6}, Ly0/s;-><init>(JJJ)V

    sput-object v0, Ly0/s;->e:Ly0/s;

    return-void
.end method

.method public constructor <init>(JJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Ly0/s;->a:J

    iput-wide p3, p0, Ly0/s;->b:J

    iput-wide p5, p0, Ly0/s;->c:J

    new-instance p1, LB4/p;

    invoke-direct {p1}, LB4/p;-><init>()V

    iput-object p1, p0, Ly0/s;->d:LB4/p;

    return-void
.end method
