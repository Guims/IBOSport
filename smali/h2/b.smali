.class public final Lh2/b;
.super Ljava/lang/Object;


# instance fields
.field public final a:I

.field public final b:J

.field public c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lh2/b;->a:I

    iput-wide p2, p0, Lh2/b;->b:J

    return-void
.end method

.method public constructor <init>(ILjava/net/URL;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lh2/b;->a:I

    iput-object p2, p0, Lh2/b;->c:Ljava/lang/Object;

    iput-wide p3, p0, Lh2/b;->b:J

    return-void
.end method
