.class public abstract Lt0/s;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lt0/j;

.field public final b:J

.field public final c:J


# direct methods
.method public constructor <init>(Lt0/j;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt0/s;->a:Lt0/j;

    iput-wide p2, p0, Lt0/s;->b:J

    iput-wide p4, p0, Lt0/s;->c:J

    return-void
.end method


# virtual methods
.method public a(Lt0/m;)Lt0/j;
    .locals 0

    iget-object p1, p0, Lt0/s;->a:Lt0/j;

    return-object p1
.end method
