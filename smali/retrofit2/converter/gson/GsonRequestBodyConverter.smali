.class final Lretrofit2/converter/gson/GsonRequestBodyConverter;
.super Ljava/lang/Object;

# interfaces
.implements Lretrofit2/Converter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lretrofit2/Converter<",
        "TT;",
        "Lw5/F;",
        ">;"
    }
.end annotation


# static fields
.field private static final MEDIA_TYPE:Lw5/t;

.field private static final UTF_8:Ljava/nio/charset/Charset;


# instance fields
.field private final adapter:Lcom/google/gson/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/v;"
        }
    .end annotation
.end field

.field private final gson:Lcom/google/gson/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lw5/t;->d:Ljava/util/regex/Pattern;

    const-string v0, "application/json; charset=UTF-8"

    invoke-static {v0}, LH3/u0;->n(Ljava/lang/String;)Lw5/t;

    move-result-object v0

    sput-object v0, Lretrofit2/converter/gson/GsonRequestBodyConverter;->MEDIA_TYPE:Lw5/t;

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lretrofit2/converter/gson/GsonRequestBodyConverter;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Lcom/google/gson/j;Lcom/google/gson/v;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/j;",
            "Lcom/google/gson/v;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lretrofit2/converter/gson/GsonRequestBodyConverter;->gson:Lcom/google/gson/j;

    iput-object p2, p0, Lretrofit2/converter/gson/GsonRequestBodyConverter;->adapter:Lcom/google/gson/v;

    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lretrofit2/converter/gson/GsonRequestBodyConverter;->convert(Ljava/lang/Object;)Lw5/F;

    move-result-object p1

    return-object p1
.end method

.method public convert(Ljava/lang/Object;)Lw5/F;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lw5/F;"
        }
    .end annotation

    new-instance v0, LK5/g;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, LK5/f;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, LK5/f;-><init>(LK5/h;I)V

    sget-object v3, Lretrofit2/converter/gson/GsonRequestBodyConverter;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    iget-object v2, p0, Lretrofit2/converter/gson/GsonRequestBodyConverter;->gson:Lcom/google/gson/j;

    invoke-virtual {v2, v1}, Lcom/google/gson/j;->g(Ljava/io/Writer;)Lq4/b;

    move-result-object v1

    iget-object v2, p0, Lretrofit2/converter/gson/GsonRequestBodyConverter;->adapter:Lcom/google/gson/v;

    invoke-virtual {v2, v1, p1}, Lcom/google/gson/v;->c(Lq4/b;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lq4/b;->close()V

    sget-object p1, Lretrofit2/converter/gson/GsonRequestBodyConverter;->MEDIA_TYPE:Lw5/t;

    iget-wide v1, v0, LK5/g;->q:J

    invoke-virtual {v0, v1, v2}, LK5/g;->c(J)LK5/j;

    move-result-object v0

    invoke-static {p1, v0}, Lw5/F;->create(Lw5/t;LK5/j;)Lw5/F;

    move-result-object p1

    return-object p1
.end method
