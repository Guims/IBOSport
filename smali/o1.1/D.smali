.class public final Lo1/D;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lo1/j;

.field public final b:Lk0/z;

.field public final c:LI0/N;

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:J


# direct methods
.method public constructor <init>(Lo1/j;Lk0/z;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo1/D;->a:Lo1/j;

    iput-object p2, p0, Lo1/D;->b:Lk0/z;

    new-instance p1, LI0/N;

    const/16 p2, 0x40

    new-array v0, p2, [B

    invoke-direct {p1, v0, p2}, LI0/N;-><init>([BI)V

    iput-object p1, p0, Lo1/D;->c:LI0/N;

    return-void
.end method
