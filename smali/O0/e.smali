.class public final LO0/e;
.super LL1/a;


# instance fields
.field public final b:Lk0/u;

.field public final c:Lk0/u;

.field public d:I

.field public e:Z

.field public f:Z

.field public g:I


# direct methods
.method public constructor <init>(LI0/L;)V
    .locals 1

    invoke-direct {p0, p1}, LL1/a;-><init>(LI0/L;)V

    new-instance p1, Lk0/u;

    sget-object v0, Ll0/n;->a:[B

    invoke-direct {p1, v0}, Lk0/u;-><init>([B)V

    iput-object p1, p0, LO0/e;->b:Lk0/u;

    new-instance p1, Lk0/u;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Lk0/u;-><init>(I)V

    iput-object p1, p0, LO0/e;->c:Lk0/u;

    return-void
.end method
