import React from "react";
import Image from "next/image";
import styled from "styled-components";
import { TextField } from "../../component/common/TextField";
import { theme } from "../../theme";
import { Col, ConfigProvider, Button, Radio, Row, Spin } from "antd";

const Container = styled.div`
	width: 100%;
	display: grid;
	height: 100vh;
	grid-template-columns: repeat(2, 1fr);
	align-content: center;
	grid-gap: 50px;
`;
const LoginBanner = styled.div`
	display: grid;
	justify-content: end;
`;

const LoginContent = styled.div`
	background-color: white;
	display: grid;
	justify-content: start;
`;

const LoginWrapper = styled.div`
	width: 400px;
	& .heading {
		font-style: normal;
		font-weight: normal;
		font-size: 24px;
		line-height: 35px;
		display: flex;
		font-weight: bold;
		align-items: center;
		margin-top: 18px;
		margin-bottom: 0;
		letter-spacing: 2px;
	}

	& .sub-heading {
		color: gray;
	}

	& .forget-link {
		text-align: center;
		margin-bottom: 28px;
		& a {
			text-decoration: underline;
			color: rgba(17, 15, 36, 0.4);
		}
	}
`;
const TextFieldWrapper = styled.div`
	margin-top: 35px;
`;

const StyledButton = styled(Button)`
	background: #367e12;
	display: block;
	width: 100%;
	height: 47px;
	margin-bottom: 35px;
	font-style: normal;
	font-weight: bold;
	font-size: 16px;
	line-height: 23px;
	text-align: center;
	color: #ffffff;
	border-radius: 2px;
`;
const InputFieldWrapper = styled.div`
	margin-bottom: 15px;
	& .login-text-field {
		& input {
			background: #f6f6f9 !important;
			height: 40px;
			border: 1px solid #ececee;
			border-radius: 3px;
			box-shadow: none;
		}
		& div {
			font-size: 16px;
			line-height: 22px;
			font-weight: 700;
			margin-bottom: 10px;
			color: #110f24;
		}
	}
`;

const Login = () => {
	return (
		<Container>
			<LoginBanner>
				<Image src="/image/logo.jpeg" height="300px" width="500px" />
			</LoginBanner>
			<LoginContent>
				<LoginWrapper>
					<h1 className="heading">Welcome Back To op !</h1>
					<h3 className="sub-heading">Login to continue</h3>
					<TextFieldWrapper>
						<form>
							<InputFieldWrapper>
								<TextField
									name="email"
									label="username"
									className="login-text-field"
								/>
							</InputFieldWrapper>
							<InputFieldWrapper>
								<TextField
									name="password"
									type="password"
									label="password"
									className="login-text-field"
								/>
							</InputFieldWrapper>
							<StyledButton htmlType="submit" type="primary">
								Login
							</StyledButton>
						</form>
					</TextFieldWrapper>
				</LoginWrapper>
			</LoginContent>
		</Container>
	);
};

export default Login;
