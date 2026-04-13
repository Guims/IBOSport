.class public final LI0/j;
.super Ljava/lang/Object;


# static fields
.field public static final d:LI0/j;


# instance fields
.field public final a:I

.field public final b:J

.field public final c:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, LI0/j;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v4, -0x1

    const/4 v1, -0x3

    invoke-direct/range {v0 .. v5}, LI0/j;-><init>(IJJ)V

    sput-object v0, LI0/j;->d:LI0/j;

    return-void
.end method

.method public constructor <init>(IJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LI0/j;->a:I

    iput-wide p2, p0, LI0/j;->b:J

    iput-wide p4, p0, LI0/j;->c:J

    return-void
.end method
