data "aws_vpc" "accepter" {
  provider = aws
  id       = var.target_vpc_id
}



data "aws_subnet_ids" "accepter_public" {
  provider = aws
  vpc_id   = var.target_vpc_id

  filter {
    name   = "tag:Scheme"
    values = ["public"]
  }
}

data "aws_subnet_ids" "accepter_private" {
  provider = aws
  vpc_id   = var.target_vpc_id

  filter {
    name   = "tag:Scheme"
    values = ["private"]
  }
}

data "aws_subnet_ids" "accepter_secure" {
  provider = aws
  vpc_id   = var.target_vpc_id

  filter {
    name   = "tag:Scheme"
    values = ["secure"]
  }
}

data "aws_route_table" "accepter_public" {
  provider  = aws
  count     = length(data.aws_subnet_ids.accepter_public.ids)
  subnet_id = tolist(data.aws_subnet_ids.accepter_public.ids)[count.index]
}

data "aws_route_table" "accepter_private" {
  provider  = aws
  count     = length(data.aws_subnet_ids.accepter_private.ids)
  subnet_id = tolist(data.aws_subnet_ids.accepter_private.ids)[count.index]
}

data "aws_route_table" "accepter_secure" {
  provider  = aws
  count     = length(data.aws_subnet_ids.accepter_secure.ids)
  subnet_id = tolist(data.aws_subnet_ids.accepter_secure.ids)[count.index]
}


data "aws_network_acls" "accepter_public" {
  provider = aws
  vpc_id   = var.target_vpc_id

  tags = {
    Scheme = "public"
  }
}

data "aws_network_acls" "accepter_private" {
  provider = aws
  vpc_id   = var.target_vpc_id

  tags = {
    Scheme = "private"
  }
}

data "aws_network_acls" "accepter_secure" {
  provider = aws
  vpc_id   = var.target_vpc_id

  tags = {
    Scheme = "secure"
  }
}

